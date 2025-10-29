/*
  1. Você trabalha no time de desenvolvimento de um sistema de gestão de estoque para uma loja de eletrônicos. Sua tarefa é criar uma classe chamada ItemEstoque que deverá armazenar informações sobre o nome do produto e a quantidade em estoque. Em seguida, você deve instanciar dois itens: um para "Smartphone", com 100 unidades em estoque, e outro para "Notebook", com 50 unidades. Por fim, você deve imprimir as informações desses itens no terminal.

  2. Agora que criou a classe ItemEstoque, você precisa adicionar funcionalidades para registrar entradas e saídas de produtos no estoque. Implemente métodos dentro da classe ItemEstoque para realizar essas operações. Teste esses métodos registrando uma entrada de 20 unidades para o "Smartphone" e uma saída de 10 unidades do "Notebook". Por último, imprima as novas quantidades em estoque no terminal.

  3. Você percebeu que a loja possui muitos produtos. Sua tarefa agora é fazer uma lista que armazena várias instâncias da classe ItemEstoque. Em seguida, implemente um laço de repetição que percorra essa lista e imprima as informações de cada item em estoque. Para testar, crie pelo menos três itens com diferentes produtos e quantidades, adicione-os à lista e exiba os detalhes de todos os itens cadastrados.

  4. Agora que você já tem um controle de estoque, vamos acrescentar mais uma funcionalidade ao sistema: o controle de preços dos produtos. Sua tarefa é adicionar um novo atributo preco à classe ItemEstoque. Em seguida, implemente um método que permita alterar o preço de um item específico. Crie três itens, defina seus preços iniciais e depois altere o preço de um deles. Por fim, imprima o nome do produto, sua quantidade em estoque e o preço atualizado.
*/

void main() {
  ItemEstoque smartphone = ItemEstoque("Smartphone", 10, 2400);
  ItemEstoque macbook = ItemEstoque("Macbook", 1, 5000);

  List<ItemEstoque> estoque = <ItemEstoque>[smartphone, macbook];

  print("\nItem antes da reformulação");
  for(ItemEstoque item in estoque) {
    print("Produto: ${item.nomeProduto}, Quantidade em estoque: ${item.quantidade}, Preço: R\$${item.precoProduto}");
  }

  print("\n----------------------------------------------\n");

  smartphone.saidaEstoque(8);
  smartphone.alterarPreco(3200);
  macbook.entradaEstoque(5);

  print("Item depois da reformulação");
  for(ItemEstoque item in estoque) {
    print("Produto: ${item.nomeProduto}, Quantidade em estoque: ${item.quantidade}, Preço: R\$${item.precoProduto}");
  }
}

class ItemEstoque {
  String nomeProduto;
  int quantidade;
  double precoProduto;

  ItemEstoque(this.nomeProduto, this.quantidade, this.precoProduto);

  int saidaEstoque(int saida) => quantidade -= saida;
  int entradaEstoque(int entrada) => quantidade += entrada;

  double alterarPreco(double novoValor) => precoProduto = novoValor;
}