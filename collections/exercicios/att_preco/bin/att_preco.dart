void atualizarProduto(Map<String, double> inventarioProdutos, double novoValor, String nomeProduto) {
  if(inventarioProdutos.containsKey(nomeProduto)) {
    inventarioProdutos[nomeProduto] = novoValor;
    print("Preço atualizado: $nomeProduto - $novoValor");
  }
  else {
    print("Produtuo não encontrado no inventário");
  }
}

void main() {
  Map<String, double> inventarioProdutos = { 
    "Camiseta": 30.0, 
    "Calça": 50.0, 
    "Boné": 15.0 
  }; 

  atualizarProduto(inventarioProdutos, 60.0, "Boné");
}