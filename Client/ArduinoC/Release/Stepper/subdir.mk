################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/edmund/arduino-1.0.1/libraries/Stepper/Stepper.cpp 

OBJS += \
./Stepper/Stepper.o 

CPP_DEPS += \
./Stepper/Stepper.d 


# Each subdirectory must supply rules for building sources it contributes
Stepper/Stepper.o: /home/edmund/arduino-1.0.1/libraries/Stepper/Stepper.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '


