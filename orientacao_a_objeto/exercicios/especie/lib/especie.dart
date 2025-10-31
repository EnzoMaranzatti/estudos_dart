abstract class SerVivo {
  void mostrarCaracteristicas();
}

class Planta implements SerVivo {
  @override
  mostrarCaracteristicas() {
    print("Girassol: é uma planta, não tem os cinco sentidos, é uma flor");
    print("Laranjeira: é uma planta, não tem os cinco sentidos, é uma árvore");
  }
}

class Animal implements SerVivo {
  @override
  mostrarCaracteristicas() {
    print("Ser humano: tem cinco sentidos, pensa e fala, é bípede e vive em média 75 anos");
    print("Gato: tem cinco sentidos, mia, é quadrúpede e vive em média 20 anos");
    print("Cão: tem cinco sentidos, late, é quadrúpede e vive em média 20 anos");
  }
}