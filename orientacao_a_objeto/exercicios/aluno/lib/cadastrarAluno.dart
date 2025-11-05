import 'package:aluno/aluno.dart';
import 'dart:io';

Aluno cadastrarAluno() {
  print("\n\n NOME DO ALUNO");
  String nomeAluno = stdin.readLineSync()!;

  print("\n NOTA INTERMEDIARIA");
  double intermediaria = double.parse(stdin.readLineSync()!);

  print("\n NOTA SEMESTRAL");
  double semestral = double.parse(stdin.readLineSync()!);

  print("\n NOTA TRABALHO");
  double trabalho = double.parse(stdin.readLineSync()!);

  return Aluno(nomeAluno, intermediaria, semestral, trabalho);
}