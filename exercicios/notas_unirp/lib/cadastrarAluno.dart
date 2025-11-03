import 'dart:io';
import 'package:notas_unirp/aluno.dart';

Aluno cadastrarAluno() {
  print("\nQual o nome do aluno: ");
  String nome = stdin.readLineSync()!;

  print("\nQual a nota intermediária: ");
  double notaIntermediaria = double.parse(stdin.readLineSync()!);

  print("\nQual a nota semestral: ");
  double notaSemestral = double.parse(stdin.readLineSync()!);

  print("\nQual a nota de trabalho: ");
  double notaTrabalho = double.parse(stdin.readLineSync()!);

  return Aluno(nome, notaIntermediaria, notaSemestral, notaTrabalho);
}
