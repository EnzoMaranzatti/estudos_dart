class Aluno {
  String nome;
  double notaIntermediaria;
  double notaSemestral;
  double notaTrabalho;

  Aluno(this.nome, this.notaIntermediaria, this.notaSemestral, this.notaTrabalho);

  double get media => ((notaIntermediaria + notaSemestral) / 2) * 0.7 + notaTrabalho * 0.2;

  bool get isAprovado => media >= 7.0;

  void imprimirSituacao() {
    final m = media.toStringAsFixed(2);
    if (isAprovado) {
      print('$nome você está aprovado! (média: $m)');
    } else {
      print('$nome você reprovou! (média: $m)');
    }
  }

  static void listarAlunos(List<Aluno> alunos) {
    for (var i = 0; i < alunos.length; i++) {
      print('${i + 1} - ${alunos[i].nome}');
    }
  }
}