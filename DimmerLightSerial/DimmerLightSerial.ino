void setup() {
  pinMode(11, OUTPUT);
  pinMode(A0, INPUT);
  //Inicia a comunicacao serial
  Serial.begin(9600);
}

void loop() {
  int valorLDR = analogRead(A0);

  //Imprime o valor da leitua analogica do pino A0
  delay(150);

  //se a luz ambiente for mais intensa que X, entao faz nada
  if(valorLDR <= 800) {
    int intensidadeLed = map(valorLDR, 0, 800, 255, 0);
    analogWrite(11, intensidadeLed);
    Serial.println("LUZ APAGADA");
  } else {
    analogWrite(11, 0);
    Serial.println("LUZ ACESA");
  }
}
