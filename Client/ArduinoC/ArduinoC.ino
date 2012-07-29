// Do not remove the include below
#include "ArduinoC.h"
#define PINS 8
#define STEPS 500
Stepper *engine1, *engine2;
void beginAndroidComm();
void sendMessage(const char*);
double readSpeed();
void step(signed long steps);

//The setup function is called once at startup of the sketch
void setup() {
beginAndroidComm();
for (int i = 1; i<=PINS; i++) {
pinMode(i, OUTPUT);
}
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
void beginAndroidComm() {

}
double readSpeed() {
	return 0;
}



// The loop function is called in an endless loop
void loop() {
	double stepSpeed = readSpeed();
	step(stepSpeed);
}

void sendMessage(const char* msg) {

}

void step(signed long steps) {

}
