import 'Producto.dart';

class DiscoDuro extends Producto {
  String tipoDisco;
  int capacidad;

  DiscoDuro(int codigoProducto, String nombreProducto, bool disponible, double precio, this.tipoDisco, this.capacidad)
      : super(codigoProducto, nombreProducto, disponible, precio);

  @override
  double realizarDescuento() {
    return precio * 0.8; // Descuento del 20%
  }
}
