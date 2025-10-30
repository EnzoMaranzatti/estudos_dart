import 'package:quarto/quarto.dart';

void main() {
  QuartoSimples quartoSimples = QuartoSimples(3);
  quartoSimples.reservarQuarto();
  QuartoMedio quartoMedio = QuartoMedio(5);
  quartoMedio.reservarQuarto();
  QuartoLuxo quartoLuxo = QuartoLuxo(7);
  quartoLuxo.reservarQuarto();

  quartoMedio.servirCafeDaManha();
  quartoLuxo.servirCafeDaManha();
  quartoLuxo.servicoDeQuarto();
}