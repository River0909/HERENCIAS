import 'Producto.dart';

class Marcador extends Producto {
  String colorTinta;
  String tipoMarcador;

  Marcador(int codigoProducto, String nombreProducto, bool disponible, double precio, this.colorTinta, this.tipoMarcador)
      : super(codigoProducto, nombreProducto, disponible, precio);

  @override
  double realizarDescuento() {
    return precio * 0.9; // Descuento del 10%
  }
}
