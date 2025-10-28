void iterarLista(List<int> ids) {
  ids.forEach((item) {
    if(item % 2 == 0) {
      print(item);
    }
  });
}
void main() {
  List<int> idsFuncionarios = [1, 2, 3, 4, 5, 6, 7, 8, 9]; 

  iterarLista(idsFuncionarios);
}