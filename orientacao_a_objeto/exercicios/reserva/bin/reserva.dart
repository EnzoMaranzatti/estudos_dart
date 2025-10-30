import 'package:reserva/cliente.dart';

void main() {
  Cliente enzo = Cliente("Enzo Vinícius", []);
  Cliente maria = Cliente("Maria Vitória", []);

  enzo.reservarQuarto(30);
  maria.reservarQuarto(40);
  maria.reservarQuarto(96);

  maria.cancelarReserva(40);
  maria.verReserva();
}
