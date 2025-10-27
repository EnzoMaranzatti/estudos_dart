import 'dart:io';

void main() {
  List<String> notas = <String>[];

  getComando();
  adicionarNota(notas);
  adicionarNota(notas);
  adicionarNota(notas);

  listarNotas(notas);

}

String getComando() {
  print("Digite um comando: \n1 - Adicionar Nota \n2 - Listar notas \n3 - Sair ");
  List<String> comandos = <String>['1', '2' ,'3'];
  String? entrada = "";

  entrada = stdin.readLineSync();

  if(entrada == null || !comandos.contains(entrada)) {
    print("Comando inválido!!");
    getComando();
  }

  return entrada!;
}

List<String> adicionarNota(List<String> notas) {
  print("Escreva sua nota: ");
  String? nota = "";
  nota = stdin.readLineSync();

  if(nota == null || nota.isEmpty) {
    print("Não é possivel adicionar uma nota vazia");
    adicionarNota(notas);
  }

  notas.add(nota!);

  return notas;
}

void listarNotas(List<String> notas) {
  for(var i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}