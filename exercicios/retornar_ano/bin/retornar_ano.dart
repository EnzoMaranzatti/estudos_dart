import 'dart:io';

void main() {
  print("Digite um número de um 1 a 12:");
  int numero = int.parse(stdin.readLineSync()!);

  void mesesDoAno() {
    switch(numero) {
      case 1: print("Janeiro"); break;
      case 2: print("Fevereiro"); break;
      case 3: print("Março"); break;
      case 4: print("Abril"); break;
      case 5: print("Maio"); break;
      case 6: print("Junho"); break;
      case 7: print("Julho"); break;
      case 8: print("Agosto"); break;
      case 9: print("Setembro"); break;
      case 10: print("Outubro"); break;
      case 11: print("Novembro"); break;
      case 12: print("Dezembro"); break;
    }
  }

  if(numero >= 12 || numero <= 0) {
    print("Entrada inválida!");
  } else {
    print("O mês do ano é:");
    mesesDoAno();
  }
}