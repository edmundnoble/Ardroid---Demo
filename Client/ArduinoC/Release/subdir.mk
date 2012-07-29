################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ArduinoC.cpp 

OBJS += \
./ArduinoC.o 

CPP_DEPS += \
./ArduinoC.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/workspac/ArduinoC" -I/home/edmund/arduino-1.0.1/libraries/Stepper -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=101 -Wall -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '


