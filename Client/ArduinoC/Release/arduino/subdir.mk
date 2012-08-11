################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/CDC.cpp \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/HID.cpp \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/HardwareSerial.cpp \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/IPAddress.cpp \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/Print.cpp \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/Stream.cpp \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/USBCore.cpp \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/WMath.cpp \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/WString.cpp \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/main.cpp \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/new.cpp 

C_SRCS += \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/WInterrupts.c \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/wiring.c \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_analog.c \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_pulse.c \
/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_shift.c 

OBJS += \
./arduino/CDC.o \
./arduino/HID.o \
./arduino/HardwareSerial.o \
./arduino/IPAddress.o \
./arduino/Print.o \
./arduino/Stream.o \
./arduino/Tone.o \
./arduino/USBCore.o \
./arduino/WInterrupts.o \
./arduino/WMath.o \
./arduino/WString.o \
./arduino/main.o \
./arduino/new.o \
./arduino/wiring.o \
./arduino/wiring_analog.o \
./arduino/wiring_digital.o \
./arduino/wiring_pulse.o \
./arduino/wiring_shift.o 

C_DEPS += \
./arduino/WInterrupts.d \
./arduino/wiring.d \
./arduino/wiring_analog.d \
./arduino/wiring_digital.d \
./arduino/wiring_pulse.d \
./arduino/wiring_shift.d 

CPP_DEPS += \
./arduino/CDC.d \
./arduino/HID.d \
./arduino/HardwareSerial.d \
./arduino/IPAddress.d \
./arduino/Print.d \
./arduino/Stream.d \
./arduino/Tone.d \
./arduino/USBCore.d \
./arduino/WMath.d \
./arduino/WString.d \
./arduino/main.d \
./arduino/new.d 


# Each subdirectory must supply rules for building sources it contributes
arduino/CDC.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/CDC.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/HID.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/HID.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/HardwareSerial.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/HardwareSerial.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/IPAddress.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/IPAddress.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/Print.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/Print.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/Stream.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/Stream.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/Tone.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/USBCore.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/USBCore.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/WInterrupts.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/WInterrupts.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -funsigned-char -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/WMath.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/WMath.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/WString.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/WString.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/main.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/main.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/new.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/new.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -funsigned-char -fno-exceptions -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/wiring.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/wiring.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -funsigned-char -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/wiring_analog.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_analog.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -funsigned-char -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/wiring_digital.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -funsigned-char -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/wiring_pulse.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_pulse.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -funsigned-char -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

arduino/wiring_shift.o: /home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_shift.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I/home/edmund/arduino-1.0.1/libraries/Stepper -I/home/edmund/arduino-1.0.1/libraries/USB_Host_Shield -I../ArduinoC/USB_Host_Shield -I"/home/edmund/arduino-1.0.1/libraries/Usb_Host_Shield" -I"/home/edmund/arduino-1.0.1/hardware/arduino/cores/arduino" -I"/home/edmund/arduino-1.0.1/hardware/arduino/variants/mega" -I"/home/edmund/arduino-1.0.1/libraries/Stepper" -D__IN_ECLIPSE__=1 -DARDUINO=101 -DUSB_PID= -DUSB_VID= -Wall -Os -funsigned-char -g -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


