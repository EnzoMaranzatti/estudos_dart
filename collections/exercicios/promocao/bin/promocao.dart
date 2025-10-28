void iterarSet(Set<int> prodSemana, Set<int> prodMes) {
  Set<int> resultado = prodSemana.union(prodMes);

  resultado.forEach((p) => print(p));
}
void main() {
  
  Set<int> produtosSemana = {1, 2, 3, 4};   
  Set<int> produtosMes = {3, 4, 5, 6}; 

  iterarSet(produtosSemana, produtosMes);
}