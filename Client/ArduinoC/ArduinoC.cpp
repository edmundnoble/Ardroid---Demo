// Do not remove the include below
#include "ArduinoC.h"

#include <Max3421e.h>
#include <ch9.h>
#include <AndroidAccessory.h>
AndroidAccessory acc("Google, Inc.",
             "DemoKit",
             "DemoKit Arduino Board",
             "1.0",
             "http://www.android.com",
             "0000000012345678");
#define PINS 8
#define STEPS 500
char on = 1, reverse = 0;
char rpm = 0;
Stepper *engine1, *engine2;
//void sendMessage(const char*);
void readSerial();
void step(signed long steps);

//The setup function is called once at startup of the sketch
void setup() {
	acc.begin();
Serial.begin(9600);
for (int i = 1; i<=PINS; i++) {
pinMode(i, OUTPUT);
}
pinMode(13, OUTPUT);

#ifdef MOREPINS
	engine1 = new Stepper(STEPS, 1, 2, 3, 4);
	engine2 = new Stepper(STEPS, 5, 6, 7, 8);
#else
	engine1 = new Stepper(STEPS, 1, 2);
	engine2 = new Stepper(STEPS, 3, 4);
#endif
engine1->setSpeed(100);
engine2->setSpeed(100);
}

void readSerial() {
	if (!acc.isConnected() || false) {
		Serial.println(!acc.isConnected() ? "Not connected!" : "No data incoming!");
		delay(200);
		return;
	}
char inBuffer[3] = {255, 255, 255};
Serial.println("Reading!");
acc.readBytes(inBuffer, 3);
Serial.println("Done reading.");
if ((255 == inBuffer[0]) || (255 == inBuffer[1]) || (255 == inBuffer[2])) {
	//delete inBuffer;
	Serial.println("Null msg!");
	return;
}
Serial.println("Not null!");
on = inBuffer[0];
reverse = inBuffer[1];
rpm = inBuffer[2];
Serial.println(!on ? "ON!" : "OFF! :(");
delete inBuffer;
}


// The loop function is called in an endless loop
void loop() {
	readSerial();

	//double stepSpeed = readSpeed();
	if (on){
		analogWrite(13, (reverse ? 255 / rpm : rpm));
		return;}
	//step(stepSpeed);
}
/*
void sendMessage(const char* msg) {

}*/

void step(signed long steps) {

}
