/*
  - Classe: Molde de uma representação de um elemento da vida real;
  - Objeto: é uma variavel criada a partir de uma classe;
  - Intanciação: é o processo de criar um objeto a partir de uma classe
*/
import 'package:anybank/conta.dart';

void main() {
  // List<String> contas = <String>["Matheus", "Roberta"];
  // List<double> saldos = <double>[1000, 2000];

  // Conta contaMatheus = Conta("Matheus", 1000);
  // Conta contaRoberta = Conta("Roberta", 2000);

  ContaCorrente contaDaiane = ContaCorrente("Enzo Vinicius", 8000);
  ContaPoupanca contaEduardo = ContaPoupanca("Eduardo", 3000);
  ContaSalario contaSalarioCatarina = ContaSalario("Catarina", 1500, "82.965.584.698:8479-75", "Azan");
  ContaEmpresa contaMatheus = ContaEmpresa("Matheus", 2000);
  ContaInvestimento contaMaria = ContaInvestimento("Maria", 1500);

  contaMatheus.receber(500);
  contaMatheus.enviar(500, contaEduardo);
  contaDaiane.enviar(6000, contaMatheus);
  contaEduardo.infoSaldo();
  contaEduardo.calculaRendimento();
  contaEduardo.infoSaldo();
  contaSalarioCatarina.infoSaldo();
  contaSalarioCatarina.depositarSalario(400);

  contaMatheus.enviar(1000, contaMaria);
  contaMaria.receber(1000);
  contaMaria.infoSaldo();
}