class Aluno {
  String? nomeAluno;
  double _notaIntermediario;
  double _notaSemestral;
  double _notaTrabalho;

  Aluno(this.nomeAluno, this._notaIntermediario, this._notaSemestral, this._notaTrabalho);

  double get intermediaria => _notaIntermediario;
  double get semestral => _notaSemestral;
  double get trabalho => _notaTrabalho;
  double get media => ((intermediaria + semestral) / 2) * 0.7 + trabalho * 0.3;

  String get nomeFormatado {
    if (nomeAluno!.length <= 18) {
      return nomeAluno!;
    }
    return "${nomeAluno!.substring(0, 15)}..."; // Limita a 15 chars + "..."
  }

  String aprovado() => media > 7 ? "APROVADO" : "REPROVADO";
} 