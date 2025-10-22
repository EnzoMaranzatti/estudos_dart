import 'dart:io';

void main() {
  print("Qual é seu nome?");
  String nome = stdin.readLineSync()!;
  print("\n");

  print("Qual é seu CPF?");
  String cpf = stdin.readLineSync()!;
  print("\n");

  print("Qual é sua idade?");
  int idade = int.parse(stdin.readLineSync()!);
  print("\n");

  print("Qual é sua altura?");
  double altura = double.parse(stdin.readLineSync()!);
  print("\n");

  print("Participa da comunidade? S/N");
  String entrada =  stdin.readLineSync()!.trim().toLowerCase();
  print("\n\n");

  bool comunidade;
  
  if(entrada == 's') {
    comunidade = true;
  } else {
    comunidade = false;
  }

  print("------------------------------------------");
  print("FICHA PACIENTE\n");

  print("Eu sou $nome,\nmeu cpf é $cpf\nsou membro da comunidade? $comunidade. \nEu tenho $altura metros de altura e $idade anos de idade. ");
}
