import 'dart:io';

void main() {
  double pontosInicias = 100;
  double pontosRetirados;

  double refatoracaoPontos(double ptInicial, double ptRetirado) {
    double pontosRestantes = ptInicial - ptRetirado;
    return pontosRestantes;
  }

  print("Você tem $pontosInicias pontos.");
  print("Quantos pontos você gostaria de resgatar?");
  pontosRetirados = double.parse(stdin.readLineSync()!);

  if(pontosRetirados > pontosInicias) {
    print("A quantidade de pontos para resgatar ultrapassam o seus pontos");
  } else {
    double resultado = refatoracaoPontos(pontosInicias, pontosRetirados);
    print("Você resgatou ${pontosRetirados.toStringAsFixed(2)} de pontos. \nPontos restantes ${resultado.toStringAsFixed(2)}");
  }
}
