import 'dart:io';

void main() {
  int numero = 0;

  void validarMes() {
    print("Digite um número de um 1 a 12:");
    int numero = int.parse(stdin.readLineSync()!);

    if(numero >= 12 || numero <= 0) {
      print("Entrada inválida!");
      validarMes();
    } else if(numero >= 1 || numero <= 12) {
      print("Mês válido: $mesesD");
    }
  }

  validarMes();

  String mesesDoAno() {
    String nomeMes = "";
    switch(numero) {
      case 1: nomeMes = "Janeiro"; break;
      case 2: nomeMes = "Fevereiro"; break;
      case 3: nomeMes = "Março"; break;
      case 4: nomeMes = "Abril"; break;
      case 5: nomeMes = "Maio"; break;
      case 6: nomeMes = "Junho"; break;
      case 7: nomeMes = "Julho"; break;
      case 8: nomeMes = "Agosto"; break;
      case 9: nomeMes = "Setembro"; break;
      case 10: nomeMes = "Outubro"; break;
      case 11: nomeMes = "Novembro"; break;
      case 12: nomeMes = "Dezembro"; break;
    }
    return nomeMes;
  }
}