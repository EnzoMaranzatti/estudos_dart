/*
  Classe: Molde de uma representação de um elemento da vida real;
  Objeto: é uma variavel criada a partir de uma classe;
  Intanciação: é o processo de criar um objeto a partir de uma classe
*/

void main() {
  // List<String> contas = <String>["Matheus", "Roberta"];
  // List<double> saldos = <double>[1000, 2000];

  Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaRoberta = Conta("Roberta", 2000);

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  for(Conta conta in contas) {
    print(conta.titular);
    print(conta.saldo);
  }

  contaRoberta.saldo = 5000;
}

// class ContaMathues {
//   String titulas = "Matheus";
//   double saldo = 1000;
// }

// class ContaRoberta {
//   String titular = "Roberta";
//   double saldo = 2000;
// }

class Conta {
  String titular;
  double saldo;

  // Função construtora
  Conta(this.titular, this.saldo);
}