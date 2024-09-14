import 'Figura.dart';


class Triangulo extends Figura {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  @override
  double calcularArea() {
    return (base * altura) / 2;
  }
}
