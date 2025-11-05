import 'package:aluno/aluno.dart';

void listarAluno(List<Aluno> aluno) {
  print("\n\n${'-' * 80}");
  print("\nLISTA DE ALUNOS");
  print("${'NOME'.padRight(20)} ${'INTERM.'.padRight(10)} ${'SEMEST.'.padRight(10)} ${'TRABALHO'.padRight(10)} ${'MÉDIA'.padRight(8)} APROVADO?");
  print('-' * 80);
  
  for(var alunos in aluno) {
    String nome = alunos.nomeFormatado.padRight(20);
    String interm = alunos.intermediaria.toString().padRight(10);
    String semest = alunos.semestral.toString().padRight(10);
    String trab = alunos.trabalho.toString().padRight(10);
    String media = alunos.media.toStringAsFixed(2).padRight(8);
    String aprovado = alunos.aprovado().toString();
    
    print("$nome $interm $semest $trab $media $aprovado");
  }
  
  print("${'-' * 80}\n\n");
}

