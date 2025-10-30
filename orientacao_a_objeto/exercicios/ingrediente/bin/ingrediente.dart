import 'package:ingrediente/ingrediente.dart';

void main() {
  var banana = Fruta('Banana');
  var cenoura = Legume('Cenoura');
  var sal = Tempero('Sal');

  banana.detalhes();
  print('');
  cenoura.detalhes();
  print('');
  sal.detalhes();
}
