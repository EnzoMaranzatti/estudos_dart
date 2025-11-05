import 'dart:io';

import 'package:aluno/aluno.dart';
import 'package:aluno/cadastrarAluno.dart';
import 'package:aluno/listarAluno.dart';

String getComando() {
  print("Digite um comando: \n1 - Adicionar Aluno \n2 - Listar aluno \n3 - Sair ");
  List<String> comandos = <String>['1', '2', '3'];
  String? entrada = stdin.readLineSync();

  if(entrada == null || !comandos.contains(entrada)) {
    print("Comando inválido!!");
    return getComando(); // RETORNA o resultado da recursão
  }

  return entrada;
}

void main() {
  List<Aluno> alunos = <Aluno>[];
  String comando;

  do {
    comando = getComando(); // Chama UMA vez e guarda o resultado
    
    switch(comando) {
      case '1': 
        alunos.add(cadastrarAluno()); // Chama só uma vez
        break;
      case '2': 
        listarAluno(alunos);
        break;
      case '3':
        print("Saindo...");
        break;
      default: 
        print("Inválido");
    } 

  } while(comando != '3'); // Continua enquanto NÃO for '3'
}