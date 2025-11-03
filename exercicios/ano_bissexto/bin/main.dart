bool ehBissexto(int ano) {
  return (ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0);
}


void main() {
  for (var ano in [1999, 2000, 2004, 1900, 2100, 2400, 1997]) {
    print('$ano é bissexto? ${ehBissexto(ano)}');
  }
}