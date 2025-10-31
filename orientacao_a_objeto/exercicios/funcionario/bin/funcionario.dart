import 'package:funcionario/funcionario.dart';

void main() {
  Analista enzo = Analista("Enzo Vinicius", 4000);
  Diretor maria = Diretor("Maria Vitoria", 7000);
  Gerente daiane = Gerente("Daiane", 10000);

  enzo.calcularSalario();
  maria.calcularSalario();
  daiane.calcularSalario();
}