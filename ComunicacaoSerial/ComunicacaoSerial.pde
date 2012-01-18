#include <Servo.h>

Servo meuServo;

void setup() {
  meuServo.attach(10);
  pinMode(2, INPUT);
}

void loop() {
  if(digitalRead(2) == HIGH) {
    for(int i = 0; i <= 180; i++) {
      servo.write(i);
      delay(0);
    }
  } else {
    servo.write(0);
  }
}
