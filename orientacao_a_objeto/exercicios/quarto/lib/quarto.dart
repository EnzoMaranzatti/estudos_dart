class Quarto {
  String tipoQuarto;
  double valorDiaria;
  int diarias;

  Quarto(this.tipoQuarto, this.valorDiaria, this.diarias);

  void reservarQuarto() {
    print("Reserva realizada para $diarias diarias no quarto $tipoQuarto no valor de R\$$valorDiaria. Preço total da estadia é de R\$${_subtotal()}");
  } 

  double _subtotal() {
    double subTotal;
    return subTotal = valorDiaria * diarias;
  }
}

class QuartoSimples extends Quarto {
  QuartoSimples(int diaria) : super("Simples", 80, diaria);
}

class QuartoMedio extends Quarto {
  QuartoMedio(int diaria) : super("Médio", 250, diaria);

  void servirCafeDaManha() {
    print("Servindo cafe da manha no quarto $tipoQuarto.");
  }
}

class QuartoLuxo extends Quarto {
  QuartoLuxo(int diaria) : super("Luxo", 1000, diaria);

  void servirCafeDaManha() {
    print("Servindo cafe da manha no quarto $tipoQuarto.");
  }

  void servicoDeQuarto() {
    print("Limpando o quarto $tipoQuarto.");
  }
}