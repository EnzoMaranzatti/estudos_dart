class Character {
  String name;
}

abstract class Attributes {
  double strength;
  double life;
  double defense;
  double critical;
  int level;

  Attributes(this.strength, this.life, this.defense, this.critical, this.level);
}

mixin AumentarAtributos {
  void aumentarAtributos(Attributes atributos, Classes classe) {
    atributos.life += 25 * classe.multiplicador;
    atributos.level += 1 * classe.multiplicador;
    atributos.defense += 4.5 * classe.multiplicador;
    atributos.critical += 0.8 * classe.multiplicador;
    atributos.strength += 12 * classe.multiplicador;
  }
}

abstract class Classes {
  List<String> classes = <String>["Wizard", "Warrior", "Tank"];
  int multiplicador;

  Classes(this.classes, this.multiplicador);

  if(classes.)
}

class Mission extends Attributes {
  Map<String, int> map = {
    "Mundo 1": 1,
    "Mundo 2": 2,
    "Mundo 3": 3,
    "Mundo 4": 4,
    "Mundo 5": 5,
    "Mundo X": 10,
  };

  Mission(double strength, double life, double defense, double critical, int level) 
  : super(strength, life, defense, critical, level);

  void completeMission(String worldName) {
    if (map.containsKey(worldName)) {
      level += map[worldName]!;
      // Aqui você pode aumentar outros atributos também
    }
  }
}