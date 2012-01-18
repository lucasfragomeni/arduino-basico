void setup() {
  pinMode(11, OUTPUT);
  pinMode(A0, INPUT);
}

void loop() {
  int valorPot = analogRead(A0);
  int intensidadeLed =
    map(valorPot, 0, 1023, 0, 255);
  analogWrite(11, intensidadeLed);
}
