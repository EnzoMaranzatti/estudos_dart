abstract class Ingrediente {
  String nome;
  String tipo;

  Ingrediente(this.nome, this.tipo);
  
  void detalhes() => print("$nome - $tipo");
}

class Fruta extends Ingrediente {
  Fruta(String nome): super(nome, "Fruta");

  @override
  void detalhes() => print("As frutas geralmente não são cozidas nas receitas.");
}

class Legume extends Ingrediente {
  Legume(String nome): super(nome, "Legume");

  @override
  void detalhes() => print("Os legumes geralmente precisam ser cozidos nas receitas.");
}

class Tempero extends Ingrediente {
  Tempero(String nome): super(nome, "Tempero");

  @override
  void detalhes() => print("Os temperos são usados para condimentar os alimentos."); 
}