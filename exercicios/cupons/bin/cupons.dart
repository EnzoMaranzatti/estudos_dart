import 'dart:io';

void main() {
  print("\nNome do cliente?");
  String cliente = stdin.readLineSync()!;

  print("\n$cliente, quanto gastou no mercado No Precinho?");
  double valorCompra = double.parse(stdin.readLineSync()!);

  if(valorCompra > 50.0) {
    double cupom = valorCompra / 50;  
    print("\n\n------------RESULTADO------------\n");
    print("Cliente: $cliente \nValor Compra: R\$ ${valorCompra.toStringAsFixed(2)} \nQuantidade de cupons: ${cupom.toStringAsFixed(0)}");
  } 
  else {
    print("\n\n------------RESULTADO------------\n");
    print("Cliente: $cliente \nValor Compra: R\$ ${valorCompra.toStringAsFixed(2)}");
  }
}
