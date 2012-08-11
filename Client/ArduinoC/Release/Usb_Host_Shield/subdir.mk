################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield/AndroidAccessory.cpp \
/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield/Max3421e.cpp \
/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield/UsbHost.cpp 

OBJS += \
./Usb_Host_Shield/AndroidAccessory.o \
./Usb_Host_Shield/Max3421e.o \
./Usb_Host_Shield/UsbHost.o 

CPP_DEPS += \
./Usb_Host_Shield/AndroidAccessory.d \
./Usb_Host_Shield/Max3421e.d \
./Usb_Host_Shield/UsbHost.d 


# Each subdirectory must supply rules for building sources it contributes
Usb_Host_Shield/AndroidAccessory.o: /home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield/AndroidAccessory.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

Usb_Host_Shield/Max3421e.o: /home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield/Max3421e.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

Usb_Host_Shield/UsbHost.o: /home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield/UsbHost.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '


