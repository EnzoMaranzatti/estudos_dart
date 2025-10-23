import 'dart:io';

void main() {
  print("----------------------CALCULADORA----------------------\n");
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  // List<Tipo> nomeLista = <tipo>[...];
  List<String> operacoes = <String>["+", "-", "/", "*"];


  void soma() { 
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  void calcular() {
    // Maneira 4 - Switch
    switch(operacao) {
      case "+": soma(); break;
      case "-": subtracao(); break;
      case "/": divisao(); break;
      case "*": multiplicacao(); break;
      default: print("Entrada inválida!!"); 
    }
  }

  print("Digite o primeiro valor");

  String? entrada = stdin.readLineSync();

  if(entrada != null) {
    if(entrada != "") {
      numeroUm = double.parse(entrada);
    }
  }

  void getOperacao() {
    print("Digite uma operação");
    entrada = stdin.readLineSync();

    if(entrada != null) {
      if(operacoes.contains(entrada)) {
        operacao = entrada!;
      }
    }
  }

  print("Digite uma operação");

  entrada = stdin.readLineSync();
  if(entrada != null) {
    operacao = entrada!;
  }

  print("Digite o segundo valor");

  entrada = stdin.readLineSync();
  if(entrada != null) {
    if(entrada != "") {
      numeroDois = double.parse(entrada!);
    }
  }

  print("O resultado da operação é:");

  calcular();
}