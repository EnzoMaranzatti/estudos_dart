import 'dart:io';

void main() {
  int num;
  print("Digite um numero");
  num = int.parse(stdin.readLineSync()!);
  

  for(var i = 0; i <= num; i++) {
    print(i);
  }
}
