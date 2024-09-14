import 'persona.dart';

class Programador extends Persona {
  double salario;

  Programador(String nombre, int edad, this.salario) : super(nombre, edad);

  double obtenerSalarioNeto() {
    return salario - (salario * 0.11);
  }
}