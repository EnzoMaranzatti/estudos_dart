abstract class Funcionario {
  String nomeFuncionario;
  double salarioBase = 3000;

  Funcionario(this.nomeFuncionario, this.salarioBase);

  void calcularSalario() { }
}

class Analista extends Funcionario {
  Analista(super.nomeFuncionario, super.salarioBase);

  @override
  void calcularSalario() {
    salarioBase = salarioBase + salarioBase * 1.2;
    print("Salário do Analista $nomeFuncionario: R\$$salarioBase");
  } 
}

class Gerente extends Funcionario {
  Gerente(super.nomeFuncionario, super.salarioBase);

  @override
  void calcularSalario() {
    salarioBase = salarioBase + salarioBase * 1.5;
    print("Salário do Gerente $nomeFuncionario: R\$$salarioBase");
  } 
}

class Diretor extends Funcionario {
  Diretor(super.nomeFuncionario, super.salarioBase);

  @override
  void calcularSalario() {
    salarioBase = salarioBase + salarioBase * 2.0;
    print("Salário do Diretor $nomeFuncionario: R\$$salarioBase");
  } 
}