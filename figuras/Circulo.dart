import 'Figura.dart';

class Circulo extends Figura {
  double radio;

  Circulo(this.radio);

  @override
  double calcularArea() {
    return 3.1416 * radio * radio;
  }
}
