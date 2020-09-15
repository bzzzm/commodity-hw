# Commodity v1 - rev1

## MCU - STM32F405

  - [Datasheet](https://www.st.com/resource/en/reference_manual/dm00031020-stm32f405-415-stm32f407-417-stm32f427-437-and-stm32f429-439-advanced-arm-based-32-bit-mcus-stmicroelectronics.pdf)
  - based on Phil's design: https://www.youtube.com/watch?v=t5phi3nT8OU

## Power

### 5V Regulator - TPS62133

  - [Datasheet]()
  - [Webench design]()
  
### 3.3V LDO - AMS1117

  - [Datasheet]()

## Sensors
All sensors are connected to `I2C1` on the MCU.

### 9 Axis IMU - BMX055

  - [Datasheet](https://www.bosch-sensortec.com/media/boschsensortec/downloads/datasheets/bst-bmx055-ds000.pdf)
  - I2C addresses:
    - Accelerometer: `0x18`
    - Gyroscope: `0x68`
    - Magnetometer: `0x10`

Connected over I2C, due to some reflow issues the Magnetometer on all (that I tested) my boards is not working.

### Environment sensor - BME280

  - [Datasheet](https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280-DS002.pdf)
  - I2C address: `0x76`

### Current sensor - INA219

  - [Datasheet](https://www.ti.com/lit/ds/symlink/ina219.pdf)
  - I2C address: `0x40`

## Peripherials

### Motor Drivers - 2 x DRV8835

  - [Datasheet](https://www.ti.com/lit/ds/symlink/drv8835.pdf)
  - `MOT_R` for right motors, `MOT_L` for left motors
    
@todo:
  - connected pins
  - PWM, max voltage etc
  - driver modes and the solder point on the back of the board
  
  
### TOF Sensors - 2 x VL53L0X

  - [Datasheet]()
  - `TOF_F` for the sensor in the front bumper
  - `TOF_T` for the sensor attached to the RPI camera
  
### Wifi Scanner - ESP8266-01
This scanner will help with positioning data (besides images from RPI cam). 
Small Arduino firmware that will scan for `N` known wifi networks every `X` seconds and will send 
the `RSSI` value via UART. The MCU will make use of DMA to receive the data on `UART2`. Firmware can be found [@todo]().

### RGB Lights - WS2812

  - [Datasheet](https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf)
  - Uses SPI3 MOSI pin on the MCU to send data to the leds
