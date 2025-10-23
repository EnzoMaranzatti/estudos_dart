import 'dart:io';

void main() {
  List<String> tipoArquivo = <String>["png", "jpg", "pdf", "docx"];
  String arquivo = "";

  void validarTipoArquivo() {
    print("Qual é a extensão do seu arquivo? ${tipoArquivo.toString()}");
    arquivo = stdin.readLineSync()!;

    if(arquivo != null && tipoArquivo.contains(arquivo)) {
      print("O tipo $arquivo é válido!!");
    } else {
      print("O tipo $arquivo é inválido!!");
      validarTipoArquivo();
    }
  }
  
  validarTipoArquivo();

}