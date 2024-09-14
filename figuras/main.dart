import 'Circulo.dart';
import 'Cuadrado.dart';
import 'Triangulo.dart';
import 'dart:io';

void main() {
  print("Ingresa el radio del círculo:");
  double radio = double.parse(stdin.readLineSync()!);
  Circulo circulo = Circulo(radio);

  print("Ingresa el lado del cuadrado:");
  double lado = double.parse(stdin.readLineSync()!);
  Cuadrado cuadrado = Cuadrado(lado);

  print("Ingresa la base del triángulo:");
  double base = double.parse(stdin.readLineSync()!);
  print("Ingresa la altura del triángulo:");
  double altura = double.parse(stdin.readLineSync()!);
  Triangulo triangulo = Triangulo(base, altura);

  print("Área del círculo: ${circulo.calcularArea()}");
  print("Área del cuadrado: ${cuadrado.calcularArea()}");
  print("Área del triángulo: ${triangulo.calcularArea()}");
}
