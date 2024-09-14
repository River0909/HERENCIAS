import 'Electrodomestico.dart';

class Parlante extends Electrodomestico {
  String potencia;
  double peso;

  Parlante(int codigoProducto, String nombreProducto, bool disponible, double precio, int consumoWatts, bool tieneBluetooth, this.potencia, this.peso)
      : super(codigoProducto, nombreProducto, disponible, precio, consumoWatts, tieneBluetooth);
}
