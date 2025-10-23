import 'dart:io';

void main() {
  print("----------------------CALCULADORA----------------------\n");
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  String? entrada = "";
  List<String> operacoes = <String>["+", "-", "/", "*"];

  void soma() => print(numeroUm + numeroDois);
  void subtracao() => print(numeroUm - numeroDois);
  void divisao() => print(numeroUm / numeroDois);
  void multiplicacao() => print(numeroUm * numeroDois);

  void getOperacao() {
    print("Digite uma operação ${operacoes.toString()}");
    entrada = stdin.readLineSync();
    if (entrada != null && operacoes.contains(entrada)) {
      operacao = entrada!;
    } else {
      print("entrada inválida");
      getOperacao();
    }
  }

  void calcular() {
    switch (operacao) {
      case "+": soma(); break;
      case "-": subtracao(); break;
      case "/": divisao(); break;
      case "*": multiplicacao(); break;
      default: print("Entrada inválida!");
    }
  }

  print("Digite o primeiro valor:");
  entrada = stdin.readLineSync(); 
  if (entrada != null && entrada != "") {
    numeroUm = double.parse(entrada!);
  }

  getOperacao();

  print("Digite o segundo valor:");
  entrada = stdin.readLineSync();
  if (entrada != null && entrada != "") {
    numeroDois = double.parse(entrada!);
  }

  print("O resultado da operação é:");
  calcular();
}