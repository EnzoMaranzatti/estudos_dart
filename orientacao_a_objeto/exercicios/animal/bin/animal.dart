import 'package:animal/animal.dart';

void main() {
  Cachorro rex = Cachorro();
  Gato mel = Gato();
  
  List<Animal> animais = [rex, mel];

  for(Animal animal in animais) {
    animal.emitirSom();
  }

  rex.abanarRabo();
  mel.arranharMoveis();

}