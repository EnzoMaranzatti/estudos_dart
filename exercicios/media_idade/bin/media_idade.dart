import 'dart:io';

void main() {

  print("Digite o nome da primeira pessoa: ");
  int idadePessoa1 = int.parse(stdin.readLineSync()!);

  print("Digite o nome da segunda pessoa: ");
  int idadePessoa2 = int.parse(stdin.readLineSync()!);

  print("Digite o nome da terceira pessoa: ");
  int idadePessoa3 = int.parse(stdin.readLineSync()!);

  print("Digite o nome da quarta pessoa: ");
  int idadePessoa4 = int.parse(stdin.readLineSync()!);

  void mediaIdade() {
    double media = (idadePessoa1 + idadePessoa2 + idadePessoa3 + idadePessoa4) / 4;
    print("A media das idades é: $media");
  }

  mediaIdade();
}
