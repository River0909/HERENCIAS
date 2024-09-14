import 'Producto.dart';

class Electrodomestico extends Producto {
  int consumoWatts;
  bool tieneBluetooth;

  Electrodomestico(int codigoProducto, String nombreProducto, bool disponible, double precio, this.consumoWatts, this.tieneBluetooth)
      : super(codigoProducto, nombreProducto, disponible, precio);

  double calcularPrecioConsumo(int horas) {
    return (consumoWatts / 1000) * horas * precio; // Cálculo básico del costo energético
  }

  @override
  double realizarDescuento() {
    return precio * 0.7; // Descuento del 30%
  }
}
