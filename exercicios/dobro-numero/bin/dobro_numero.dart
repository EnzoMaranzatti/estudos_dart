import 'dart:io';

void main() {
  print("Digite um numero: ");
  double numero = double.parse(stdin.readLineSync()!);

  void dobro() {
    print(numero * 2);
  }

  dobro();
}
