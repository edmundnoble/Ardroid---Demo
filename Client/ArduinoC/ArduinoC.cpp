// Do not remove the include below
#include "ArduinoC.h"

#include <Max3421e.h>
#include <ch9.h>
#include <AndroidAccessory.h>
AndroidAccessory acc("Arduino", "MegaADK", "Mega ADK Arduino Board", "1.0",
		"http://www.android.cc", "0000000034567312");
#define PINS 8
#define STEPS 500
bool on = false, reverse = false;
byte rpm = 0;
Stepper *engine1, *engine2;
//void sendMessage(const char*);
void readSerial();
void step(signed long steps);

//The setup function is called once at startup of the sketch
void setup() {
	Serial.begin(9600);
	acc.begin();
	/*for (int i = 1; i <= PINS; i++) {
	 pinMode(i, OUTPUT);
	 }*/
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
	acc.isConnected();
}
char inBuffer[] = {255, 255, 255};
void readSerial() {
	if (!acc.isConnected()) {
		delay(1000);
		if (!acc.isConnected()) {
			Serial.println("Not connected!");
			acc.begin();
			on = false;
			reverse = false;
			rpm = 0;
			return;
		}
	}
	Serial.println("Reading!");
	for (unsigned int i = 0; i < 3; i++)
		inBuffer[i] = acc.read();
	Serial.println("Done reading.");
	if ((255 == inBuffer[0]) || (255 == inBuffer[1]) || (255 == inBuffer[2])) {
		delete inBuffer;
		Serial.println("Null msg!");
		return;
	}
	Serial.println("Not null!");
	on = !!inBuffer[0];
	reverse = !!inBuffer[1];
	rpm = inBuffer[2];
	Serial.println(!!on ? "ON!" : "OFF! :(");
	Serial.print("RPM: " + (byte) rpm);
	delete inBuffer;
	inBuffer = {255, 255, 255};
}

// The loop function is called in an endless loop
void loop() {
	readSerial();

	//double stepSpeed = readSpeed();
	if (!!on) {
		int halfRPM = rpm / 2;
		analogWrite(13, (reverse ? halfRPM : halfRPM + 128));
		return;
	}
	digitalWrite(13, LOW);
	delay(100);
	//step(stepSpeed);
}
/*
 void sendMessage(const char* msg) {

 }*/

void step(signed long steps) {

}
