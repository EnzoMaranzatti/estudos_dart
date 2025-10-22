import 'dart:io';

void main() {
  double saldo = 1000.0;

  print("Boas-vindas ao seu banco digital!!");
  print("Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}");

  print("Digite o valor do PIX que deseja fazer:");
  double valorPIX = double.parse(stdin.readLineSync()!);

  saldo -= valorPIX;
  
  print("PIX realizado com sucesso!");
  print("Seu saldo atual é de R\$${saldo.toStringAsFixed(2)}");

}
