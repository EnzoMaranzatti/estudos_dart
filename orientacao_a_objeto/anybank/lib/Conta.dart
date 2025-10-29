// class ContaMathues {
//   String titulas = "Matheus";
//   double saldo = 1000;
// }

// class ContaRoberta {
//   String titular = "Roberta";
//   double saldo = 2000;
// }
//

class Conta {
  String titular;
  double _saldo;
  
  Conta(this.titular, this._saldo);

  void receber(double valor) {
    _saldo += valor;
    infoSaldo();
  }    
  
  void enviar(double valor, Conta destinatario) {
    if(_saldo >= valor) {  
      _saldo -= valor;
      destinatario._saldo += valor;
      print("$titular enviou R\$$valor para ${destinatario.titular}");
    }
  }

  void infoSaldo() => print("O saldo atual de $titular, é: R\$$_saldo");
}