abstract class Conta {
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

class ContaSalario extends Conta {
  String cnpj;
  String nomeEmpresa;

  ContaSalario(super.titular, super._saldo, this.cnpj, this.nomeEmpresa);

  void depositarSalario(double valor) {
    _saldo += valor;
    print("O salário da $nomeEmpresa, de CNPJ $cnpj no valor de R\$$valor foi depositado!");
  }
}

mixin Imposto {
  double taxa = 0.03;
  double valorTaxado(double valor) => valor * taxa;
}

class ContaEmpresa extends Conta with Imposto {
  ContaEmpresa(super.titular, super._saldo);

  @override
  void enviar(double valor, Conta destinatario) {
    if(_saldo >= valor + valorTaxado(valor)) {
      _saldo -= valor + valorTaxado(valor);
      print("$titular enviou R\$$valor para ${destinatario.titular}");
    }
  }

  @override
  void receber(double valor) => _saldo += valor - valorTaxado(valor);
}

class ContaInvestimento extends Conta with Imposto {
  ContaInvestimento(super.titular, super._saldo);

  @override
  void enviar(double valor, Conta destinatario) {
      if(_saldo >= valor + valorTaxado(valor)) {
      _saldo += valor + valorTaxado(valor);
      print("$titular enviou R\$$valor para ${destinatario.titular}");
    }
  }

  @override 
  void receber(double valor) => _saldo += valor - valorTaxado(valor);
}