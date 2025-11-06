import 'jogo.dart';

class Wizard extends Attributes {
  Wizard({required int level}): 
    super(
      strength: 5.0, 
      life: 80.0, 
      defense: 3.0, 
      critical: 15.0, 
      level: level,
    );
}

class Warrior extends Attributes {
  Warrior({required int level}):
    super(
      strength: 12.0,
      life: 120.0,
      defense: 8.0,
      critical: 8.0,
      level: level,
    );
}

class Tank extends Attributes {
  Tank({required int level}):
    super(
      strength: 8.0,
      life: 150.0,
      defense: 15.0,
      critical: 5.0,
      level: level,
    );
}
