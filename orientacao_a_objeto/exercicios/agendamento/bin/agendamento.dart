import 'package:agendamento/agendamento.dart';

void main() {
  Medico medico = Medico();
  Dentista dentista = Dentista();

  GerenciadorDeAgendamentos gerenciador = GerenciadorDeAgendamentos();
  gerenciador.adicionarProfissionais(medico);
  gerenciador.adicionarProfissionais(dentista);

  gerenciador.exibirDuracaoEDisponibilidade();
}