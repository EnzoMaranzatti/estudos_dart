import 'dart:io';

void main() {
  print("----------------------CALCULADORA----------------------\n");
  double numeroUm = double.parse(stdin.readLineSync()!);
  double numeroDois = double.parse(stdin.readLineSync()!);
  String operacao = stdin.readLineSync()!;


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

  /*
    // Maneira 1 - IF

    if(operacao == "+") { soma(); }
    if(operacao == "-") { subtracao(); }
    if(operacao == "/") { divisao(); }
    if(operacao == "*") { multiplicacao(); }

    ----------------------------------------

    // Maneira 2 - IF/ELSE

    if(operacao == "+") {
      soma();
    } else {
      if(operaco == "-") {
        subtracao();
      } else {
        if(operaco == "/") {
          divisao();
        } else {
          if(operaco == "*") {
            multiplicacao();
          }
        }
      } 
    }

    ----------------------------------------

    // Maneira 3 - IF/ELSE IF

    if(operacao == "+") { 
      soma();
    } else if(operacao == "-") {
      subtracao();
    } else if(operacao == "/"){
      divisao();
    } else if(operacao == "*") {
      multiplicacao();
    }    

  */

  // Maneira 4 - Switch
  switch(operacao) {
    case "+": soma(); break;
    case "-": subtracao(); break;
    case "/": divisao(); break;
    case "*": multiplicacao(); break;
    default: print("Entrada inválida!!");

    
  }
}