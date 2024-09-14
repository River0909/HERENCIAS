abstract class Producto {
  int _codigoProducto;
  String _nombreProducto;
  bool disponible;
  double precio;

  Producto(this._codigoProducto, this._nombreProducto, this.disponible, this.precio);

  void mostrarInformacionProducto() {
    print('Código Producto: $_codigoProducto');
    print('Nombre Producto: $_nombreProducto');
    print('Disponible: $disponible');
    print('Precio: $precio');
  }

  double realizarDescuento(); // Método abstracto
}
