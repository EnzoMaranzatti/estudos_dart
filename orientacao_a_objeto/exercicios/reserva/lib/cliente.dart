class Cliente {
  String nomeCliente;
  List<int> _reserva;

  Cliente(this.nomeCliente, this._reserva);

  void reservarQuarto(int numQuarto) {
    _reserva.add(numQuarto);
    _infoReserva();
  } 

  void _infoReserva() => _reserva.length > 1 ? print("$nomeCliente reservou os quartos $_reserva") : print("$nomeCliente reservou o quarto $_reserva");

  void cancelarReserva(int numQuarto) {
    if(_reserva.contains(numQuarto)) {
      _reserva.remove(numQuarto);
      print("$nomeCliente cancelou a reserva do quarto $numQuarto");
    }
    else {
      print("Qaurto não encontrado");
    }
  }

  void verReserva() => print("$nomeCliente - $_reserva");
}