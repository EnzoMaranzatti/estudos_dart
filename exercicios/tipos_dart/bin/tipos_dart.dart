import 'dart:io';

void main() {
  double pontosInicias = 100;
  double pontosRetirados;

  print("Você tem $pontosInicias pontos.");
  print("Quantos pontos você gostaria de resgatar?");
  pontosRetirados = double.parse(stdin.readLineSync()!);

  if(pontosRetirados > pontosInicias) {
    print("A quantidade de pontos para resgatar ultrapassam o seus pontos");
  } else {
    double pontosRestantes = pontosInicias - pontosRetirados;
    print("Você resgatou ${pontosRetirados.toStringAsFixed(2)} de pontos. \nPontos restantes ${pontosRestantes.toStringAsFixed(2)}");
  }
}
