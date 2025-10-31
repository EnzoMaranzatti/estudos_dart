abstract class Agendamento {
  calculaDuracaoConsulta();
  verificaDisponibilidade();
}

class Medico implements Agendamento {
  @override
  calculaDuracaoConsulta() {
    print("A duração de uma consulta médica é de 30 minutos");
  }

  @override
  verificaDisponibilidade() {
    print("A disponibilidade é verificada com base em um calendário de agendamentos previamente existente.");
  }
}

class Dentista implements Agendamento {
  @override
  calculaDuracaoConsulta() {
    print("A duração de uma consulta médica é de 45 minutos");
  }

  @override
  verificaDisponibilidade() {
    print("Dentistas têm intervalos de 15 minutos entre consultas.");
  }
}

class GerenciadorDeAgendamentos {
  List<Agendamento> profissionais = [];

  void adicionarProfissionais(Agendamento profissional) {
    profissionais.add(profissional);
  }

  void exibirDuracaoEDisponibilidade() {
    for (Agendamento profissional in profissionais) {
      profissional.calculaDuracaoConsulta();
      profissional.verificaDisponibilidade();
    }
  }
}