void iterarArray(List<String> lista) {
  lista.forEach((item) => print(item));
}

void main() {
  List<String> tarefas = ["Estudar", "Comprar frutas"];

  iterarArray(tarefas);
}