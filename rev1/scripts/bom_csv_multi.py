"""
    @package

    A simple way to generate separate CSV BOM files for multiple suppliers in Kicad.
    Heavily inspired from https://github.com/wokwi/kicad-jlcpcb-bom-plugin .

    This can be made much more efficient than it is, but I didn't really bothered with the performance with my
    hobby-sized BOMs.

    Feel free to modify `config` variable to fill your needs before you copy this file in Kicad scripts dir. I recommend
    that you also check the code, things are commented and maybe you need to change it to fit your needs.

    To "install" the plugin, copy this python file in your KICAD plugins dir (usr/share/kicad/plugins on my
    Ubuntu 20 with Kicad 5.1 from Snap).

    Command line:
    python "pathToFile/bom_csv_multi.py" "%I" "%O"

    Config sample:
        {
            'suppliers': [
                {
                    'name': 'JLCPCB',
                    'field_name': 'LCSC',
                    'header': ['Comment', 'Designator', 'Quantity', 'Footprint', 'LCSC Part #'],
                    'data': ['value', 'refs', 'quantity', 'footprint', 'pn']
                },
                { ... }
            ]
        }

    This script comes with absolutely no warranty!
"""
import kicad_netlist_reader
import csv
import sys

# The configuration for multiple suppliers. Please make sure you fill at least 4 fields (name, field_name, header, data)
config = {
    'suppliers': [
        {
            'name': 'JLCPCB',
            'field_name': 'LCSC',
            'header': ['Comment', 'Designator', 'Quantity', 'Footprint', 'LCSC Part #'],
            'data': ['value', 'refs', 'quantity', 'footprint', 'pn']
        },
        {
            'name': 'Farnell',
            'field_name': 'Farnell',
            'header': ['Part Number', 'Quantity', 'Description'],
            'data': ['pn', 'quantity', 'value']
        },
        {
            'name': 'OptimusDigital',
            'field_name': 'Optimus',
            'header': ['Part Number', 'Quantity', 'Description'],
            'data': ['pn', 'quantity', 'value']
        },

        # do not remove this config line, it is a placeholder for components
        # without a supplier field.
        {
            'name': 'Empty',
            'field_name': '__missing',
            'header': ['Refs', 'Value', 'FP'],
            'data': ['refs', 'value', 'footprint']
        }
    ],
    'ignore_field': 'Ignore'
}


def create_row(comp, field, refs, quantity):
    """
    Gets a components and it's supplier field and creates a CSV row for the corespondent BOM.

    :param comp: Kicad components
    :param field: Supplier field key
    :param refs: A list with component reference that identical
    :param quantity: How many components
    :return: list, the same format as supplier['data']
    """

    out = []

    # get the supplier from config
    sup = [s for s in config['suppliers'] if s['field_name'] == field][0]

    # generate the row
    # (this should be done in a different way, but it works for now)
    for col in sup['data']:

        if col == 'value':
            out.append(comp.getValue())
            continue

        if col == 'refs':
            out.append(",".join(refs))
            continue

        if col == 'footprint':
            out.append(comp.getFootprint().split(':')[1])
            continue

        if col == 'pn':
            out.append(comp.getField(field))
            continue

        if col == "quantity":
            out.append(quantity)
            continue

    return out


def extract_boms(net):
    """
    Iterates over component groups, gets the first component in the group
    and appends the output dict for each supplier, based on the `data` key.

    :param net: Kicad netlist
    :return: dict of boms: {field_name: list(csv_rows)}
    """
    # extract possible fields (only enabled suppliers)
    fields = [x['field_name'] for x in config['suppliers'] if x.get('enabled', True)]

    # output format
    out = dict()
    for field in fields:
        out[field] = []

    # iterate component groups
    for group in net.groupComponents():

        # how many components in the group
        quant = len(group)

        # references
        refs = [r.getRef() for r in group]

        # get the first component in the group and create the csv row for each supplier
        comp = group[0]

        # ignore group in case requested
        if comp.getField(config.get('ignore_field')) != "":
            continue

        # get supplier fields in component
        sup_fields = [v for v in fields if v in comp.getFieldNames()]

        # create a csv for for each supplier field
        # if no supplier field is found, add the component in the missing csv
        if len(sup_fields) > 0:
            for field in sup_fields:
                row = create_row(comp, field, refs, quant)
                out[field].append(row)
        else:
            out['__missing'].append([", ".join(refs), comp.getValue(), comp.getFootprint()])
    return out


def write_csv(field, comps):
    """

    :param field: Supplier `field_name`
    :param comps: List of components (generated by extract_boms())
    :return:
    """

    # get the supplier from config
    sup = [s for s in config['suppliers'] if s['field_name'] == field][0]

    # generate the path from sys.argv
    path = "{}-{}-bom.csv".format(sys.argv[2], sup['name'])

    # write the CSV file (header and the component list)
    with open(path, 'w') as f:
        out = csv.writer(f)
        out.writerow(sup['header'])
        out.writerows(comps)
        f.close()


def main():
    """

    Main function

    :return: None
    """

    # read the netlist
    net = kicad_netlist_reader.netlist(sys.argv[1])

    # extract boms from netlist
    boms = extract_boms(net)

    # write boms to csv files
    for sup, comps in boms.items():
        num_comps = len(comps)
        if num_comps > 0:
            write_csv(sup, comps)
            print("> Generated CSV BOM for supplier with key `{}` "
                  "with a total of {} unique components.".format(sup, num_comps))
        else:
            print("> Ignoring supplier with key `{}`, no components found.".format(sup))
    # we got so far, nice
    sys.exit(0)


if __name__ == '__main__':
    main()
