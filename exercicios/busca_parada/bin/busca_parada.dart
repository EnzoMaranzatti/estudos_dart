void main() {
  String frase = "Parou! Esse código não Continua";

  List<String> letras = frase.toLowerCase().split('');

  for(var letra in letras) {
    if(letra == '!') {
      break;
    }
    print(letra);
  }
}