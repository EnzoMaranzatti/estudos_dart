void subTotal(Map<String, double> produto) {
  double soma = 0;

  for(double valor in produto.values) {
    soma += valor;
  }

  print(soma);
}

void main() {
  Map<String, double> precosProdutos = {
    "Camiseta": 30.0,

    "Calça": 50.0,

    "Boné": 15.0,

    "Tênis": 120.0,
  };

  subTotal(precosProdutos);
}
