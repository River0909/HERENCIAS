import 'Electrodomestico.dart';

class Portatil extends Electrodomestico {
  int tamanoMemoria;
  String procesador;

  Portatil(int codigoProducto, String nombreProducto, bool disponible, double precio, int consumoWatts, bool tieneBluetooth, this.tamanoMemoria, this.procesador)
      : super(codigoProducto, nombreProducto, disponible, precio, consumoWatts, tieneBluetooth);
}
