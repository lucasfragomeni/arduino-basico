void setup() {                
  pinMode(13, OUTPUT);
  pinMode(8, INPUT);
}

void loop() {
  int estadoBotao = digitalRead(8);
  digitalWrite(13, estadoBotao);
}
