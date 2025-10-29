/*
  Classe: Molde de uma representação de um elemento da vida real;
  Objeto: é uma variavel criada a partir de uma classe;
  Intanciação: é o processo de criar um objeto a partir de uma classe
*/
import 'package:anybank/conta.dart';

void main() {
  // List<String> contas = <String>["Matheus", "Roberta"];
  // List<double> saldos = <double>[1000, 2000];

  Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaRoberta = Conta("Roberta", 2000);

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  for(Conta conta in contas) {
    conta.infoSaldo();
  }

  contaMatheus.receber(500);
  contaMatheus.enviar(500, contaRoberta);
}

