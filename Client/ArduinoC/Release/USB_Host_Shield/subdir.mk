################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield/AndroidAccessory.cpp \
/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield/Max3421e.cpp \
/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield/Max_LCD.cpp \
/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield/Usb.cpp 

OBJS += \
./USB_Host_Shield/AndroidAccessory.o \
./USB_Host_Shield/Max3421e.o \
./USB_Host_Shield/Max_LCD.o \
./USB_Host_Shield/Usb.o 

CPP_DEPS += \
./USB_Host_Shield/AndroidAccessory.d \
./USB_Host_Shield/Max3421e.d \
./USB_Host_Shield/Max_LCD.d \
./USB_Host_Shield/Usb.d 


# Each subdirectory must supply rules for building sources it contributes
USB_Host_Shield/AndroidAccessory.o: /home/edmund/arduino-1.0.1/libraries/USB_Host_Shield/AndroidAccessory.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/Ardroid---Demo/Client/ArduinoC" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=101 -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

USB_Host_Shield/Max3421e.o: /home/edmund/arduino-1.0.1/libraries/USB_Host_Shield/Max3421e.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/Ardroid---Demo/Client/ArduinoC" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=101 -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

USB_Host_Shield/Max_LCD.o: /home/edmund/arduino-1.0.1/libraries/USB_Host_Shield/Max_LCD.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/Ardroid---Demo/Client/ArduinoC" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=101 -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

USB_Host_Shield/Usb.o: /home/edmund/arduino-1.0.1/libraries/USB_Host_Shield/Usb.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/Ardroid---Demo/Client/ArduinoC" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=101 -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '


