import 'dart:io';
import 'package:notas_unirp/aluno.dart';
import 'package:notas_unirp/cadastrarAluno.dart';

void menu() {
  List<Aluno> alunos = [];
  String? op;
  String? sair;

  print("Bem-vindo ao sistema UNIRP!");

  do {
    print("\nEscolha uma das opções abaixo:");
    print("1. Cadastrar aluno");
    print("2. Listar alunos");
    print("3. Ver notas");
    print("\nDigite uma opção: ");
    op = stdin.readLineSync();

    switch (op) {
      case "1":
        var novoAluno = cadastrarAluno();
        alunos.add(novoAluno);
        print("\nAluno cadastrado com sucesso!");
        break;

      case "2":
        if (alunos.isEmpty) {
          print("\nNenhum aluno cadastrado ainda.");
        } else {
          print("\nLista de alunos:");
          Aluno.listarAlunos(alunos);
        }
        break;

      case "3":
        if (alunos.isEmpty) {
          print("\nNenhum aluno cadastrado.");
        } else {
          print("\nNotas dos alunos:");
          for (var aluno in alunos) {
            print("${aluno.nome} - Média: ${aluno.media.toStringAsFixed(2)} (${aluno.isAprovado})");
          }
        }
        break;

      default:
        print("\nOpção inválida, tente novamente.");
    }

    print("\n----------------------------------------");
    stdout.write("Deseja sair? (S/N): ");
    sair = stdin.readLineSync();
  } while (sair!.toUpperCase() != "S");
}
