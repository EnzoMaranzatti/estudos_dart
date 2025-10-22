import 'dart:io';

void main() {
  print("\n\nDigite o número de horas de trabalho:");
  int horas = int.parse(stdin.readLineSync()!);

  double salarioLiquido = horas * 50;
  double desconto = salarioLiquido * 0.05;
  double salarioBruto = salarioLiquido - desconto;

  print("\n--------------Dados do salario----------------------");
  print("\nSalário Liquido: R\$ $salarioLiquido \nDesconto: R\$ $desconto \nSalário Bruto: R\$ $salarioBruto");

}
