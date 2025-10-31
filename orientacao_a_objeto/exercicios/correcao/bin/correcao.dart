class Documento {
  String nomeDoDocumento;

  Documento(this.nomeDoDocumento);

  void imprimir() {
    print('O $nomeDoDocumento foi enviado para impressão');
  }
}

void main() {
  Documento relatorio = Documento('Relatório Anual');
  relatorio.imprimir();
}