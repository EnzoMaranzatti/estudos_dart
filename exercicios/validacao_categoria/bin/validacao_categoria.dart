import 'dart:io';

void main() {
  List<String> categoria = <String>["Eletronicos", "Alimentos", "Vestuario", "Livros"];
  String produto = "";
  String? entrada = "";

  void atribuirCategoria(String nomeProd) {
    print("Qual categoria ele faz parte? ${categoria.toString()}");
    entrada = stdin.readLineSync();

    if(entrada != null && categoria.contains(entrada)) {
      print("Produto $nomeProd tem um categoria válida: $entrada");
    } else {
      print("Produto $nomeProd tem uma categoria inválida!! [$entrada]");
      atribuirCategoria(nomeProd);
    }
  }

  print("Nome do produto?");
  produto = stdin.readLineSync()!;

  atribuirCategoria(produto);

}