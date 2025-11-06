class Character {
  String name;

  Character(this.name);
}

abstract class Attributes {
  double strength;
  double life;
  double defense;
  double critical;
  int level;

  Attributes({
    required this.strength,
    required this.life,
    required this.defense,
    required this.critical,
    required this.level,
  });
}

class Mission {
  Map<String, int> map = {
    "Mundo 1": 1,
    "Mundo 2": 2,
    "Mundo 3": 3,
    "Mundo 4": 4,
    "Mundo 5": 5,
    "Mundo X": 10,
  };

  Mission(this.map);
}