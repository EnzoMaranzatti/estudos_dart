// void produtoVendido(Set<String> prodVendido, Set<String> prodEstoque) {
//   for(String estoque in prodEstoque) {
//     if(!prodVendido.contains(estoque)) {
//       print(estoque);
//     }
//   }
// }

void controleEstoque(Set<String> prodVendido, Set<String> prodEstoque) {
  Set naoVendido = prodEstoque.difference(prodVendido);

  for(String prod in naoVendido) {
    print(prod);
  }
}

void main() {
  Set<String> produtosVendidos = {"maçã", "banana", "laranja"};   
  Set<String> produtosEstoque = {"banana", "kiwi", "laranja"}; 

  // produtoVendido(produtosVendidos, produtosEstoque);
  controleEstoque(produtosVendidos, produtosEstoque);
}