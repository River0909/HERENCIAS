import 'persona.dart';

class Futbolista extends Persona {
  String equipo;
  String posicion;
  int goles;

  Futbolista(String nombre, int edad, this.equipo, this.posicion, this.goles) : super(nombre, edad);

  bool esTitular() {
    return goles > 5;
  }
}