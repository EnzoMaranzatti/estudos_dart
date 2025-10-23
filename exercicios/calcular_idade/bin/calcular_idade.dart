import 'dart:io';

void main() {
  String nome = "";
  int idade = 0;

  print("Seu nome?");

  String? entrada = stdin.readLineSync();

  if(entrada != null) {
    if(entrada != "") {
      nome = entrada;
    }
  }

  print("Qual a sua idade?");
  entrada = stdin.readLineSync();

  if(entrada != null) {
    if(entrada != "") {
      idade = int.parse(entrada);
    }
  }

  if(idade >= 18) {
    print("$nome, pode dirigir, pois é maior de 18 anos, você tem $idade anos");
  } else if(idade < 18) {
    print("$nome, não pode dirigir, pois é menor de 18 anos, você tem $idade anos, faltam ${18 - idade} anos para tirar a carta");
  }

}