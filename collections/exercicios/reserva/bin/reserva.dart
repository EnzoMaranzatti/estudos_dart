import 'dart:io';

void verificaSet(Set<int> code, int entrada) {
  print("Digite um número");
  entrada = int.parse(stdin.readLineSync()!);

  if(code.contains(entrada) == true) {
    print("Esse item está disponivel [$entrada]");
  } else {
    print("Esse item não está dentro de ${code.toString()}");
  }
}

void main() {
  Set<int> codigosDisponiveis = {1, 2, 3, 4, 5}; 
  int numero = 0;

  verificaSet(codigosDisponiveis, numero);
}