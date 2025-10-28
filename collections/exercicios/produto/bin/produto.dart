/*
  Uma empresa está gerenciando o inventário de seus produtos e precisa de uma solução para monitorar a quantidade de unidades de certos itens em seu estoque. Para isso, você deve criar uma função que, dado uma lista de produtos, conte quantas vezes o item "maçã" aparece na lista de produtos.
*/

int somarMacas(List<String> produtos) {
  int soma = 0;
  
  for(String total in produtos){
    if(total == 'maçã'){
      soma += 1;
    }
  }
  
  return soma;
}

void main() {
  List<String> produtos = ["maçã", "banana", "maçã", "laranja", "maçã"];
  int qtdMacas = somarMacas(produtos);
  print("Maça: $qtdMacas");
}