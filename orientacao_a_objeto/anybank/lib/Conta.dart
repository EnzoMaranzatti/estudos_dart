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

class ContaCorrente extends Conta {
  ContaCorrente(super.titular, super._saldo);
  double emprestimo = 300;

  // Sobreescrever
  @override
  void enviar(double valor, Conta destinatario) {
    if(_saldo + emprestimo >= valor) {
      _saldo -= valor;
      print("$titular enviou R\$$valor para ${destinatario.titular}");
    }
  }
}

class ContaPoupanca extends Conta {
  double rendimento = 0.05;
  ContaPoupanca(super.titular, super._saldo);

  void calculaRendimento() {
    _saldo += _saldo * rendimento;
  }
}