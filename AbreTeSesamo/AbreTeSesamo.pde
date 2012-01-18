#include <Servo.h>

Servo meuServo;
int posicaoServo;

void setup() {
  meuServo.attach(10);
  pinMode(2, INPUT);
}

void loop() {
  if(digitalRead(2) == HIGH) {
    if(posicaoServo < 180) {
      posicaoServo++;
    }
  } else {
    posicaoServo = 0;
  }
  meuServo.write(posicaoServo);
  delay(10);
}
