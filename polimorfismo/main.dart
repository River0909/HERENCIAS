import 'DiscoDuro.dart';
import 'Electrodomestico.dart';
import 'Marcador.dart';
import 'Parlante.dart';
import 'Portatil.dart';
import 'Producto.dart';


import 'dart:io';

void main() {
  List<Producto> productos = [];

  while (true) {
    print('Elige una opción:');
    print('1) Crear Disco Duro');
    print('2) Crear Marcador');
    print('3) Crear Portátil');
    print('4) Crear Parlante');
    print('5) Vender Disco Duro');
    print('6) Vender Marcador');
    print('7) Vender Portátil');
    print('8) Vender Parlante');
    print('9) Calcular precio consumo Portátil');
    print('10) Calcular precio consumo Parlante');
    print('11) Salir');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        productos.add(crearDiscoDuro());
        break;
      case '2':
        productos.add(crearMarcador());
        break;
      case '3':
        productos.add(crearPortatil());
        break;
      case '4':
        productos.add(crearParlante());
        break;
      case '5':
        venderProducto(productos, 'DiscoDuro');
        break;
      case '6':
        venderProducto(productos, 'Marcador');
        break;
      case '7':
        venderProducto(productos, 'Portatil');
        break;
      case '8':
        venderProducto(productos, 'Parlante');
        break;
      case '9':
        calcularConsumo(productos, 'Portatil');
        break;
      case '10':
        calcularConsumo(productos, 'Parlante');
        break;
      case '11':
        exit(0);
      default:
        print('Opción inválida');
    }
  }
}

DiscoDuro crearDiscoDuro() {
  return DiscoDuro(1, 'Disco Duro', true, 100.0, 'SSD', 512);
}

Marcador crearMarcador() {
  return Marcador(2, 'Marcador', true, 10.0, 'Negro', 'Permanente');
}

Portatil crearPortatil() {
  return Portatil(3, 'Portátil', true, 800.0, 60, true, 16, 'Intel i7');
}

Parlante crearParlante() {
  return Parlante(4, 'Parlante', true, 150.0, 50, true, '500W', 2.0);
}

void venderProducto(List<Producto> productos, String tipoProducto) {
  var producto = productos.firstWhere(
      (p) => p.runtimeType.toString() == tipoProducto,
      orElse: () => throw Exception('Producto no encontrado')
  );

  producto.mostrarInformacionProducto();
  print('Precio con descuento: ${producto.realizarDescuento()}');
}


void calcularConsumo(List<Producto> productos, String tipoProducto) {
  var producto = productos.firstWhere(
      (p) => p.runtimeType.toString() == tipoProducto,
      orElse: () => throw Exception('Producto no encontrado')
  );

  if (producto is Electrodomestico) {
    print('Ingrese cantidad de horas: ');
    String? horasStr = stdin.readLineSync();
    int horas = int.parse(horasStr ?? '0');
    print('Precio del consumo: ${producto.calcularPrecioConsumo(horas)}');
  } else {
    print('El producto no es un electrodoméstico');
  }
}
