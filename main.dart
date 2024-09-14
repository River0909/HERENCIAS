
import 'dart:io';
import 'Futbolista.dart';
import 'Programador.dart';
import 'persona.dart'; 

void main(List<String> args) {
  List<Persona> personas = [];

  // Crea objetos y agregarlos a la lista
  print('Ingrese los datos del futbolista 1:');
  print('Nombre:');
  String nombreFutbolista1 = stdin.readLineSync()!;
  print('Edad:');
  int edadFutbolista1 = int.parse(stdin.readLineSync()!);
  print('Equipo:');
  String equipoFutbolista1 = stdin.readLineSync()!;
  print('Posición:');
  String posicionFutbolista1 = stdin.readLineSync()!;
  print('Goles:');
  int golesFutbolista1 = int.parse(stdin.readLineSync()!);
  Futbolista futbolista1 = Futbolista(nombreFutbolista1, edadFutbolista1, equipoFutbolista1, posicionFutbolista1, golesFutbolista1);
  personas.add(futbolista1);

  print('Ingrese los datos del futbolista 2:');
  print('Nombre:');
  String nombreFutbolista2 = stdin.readLineSync()!;
  print('Edad:');
  int edadFutbolista2 = int.parse(stdin.readLineSync()!);
  print('Equipo:');
  String equipoFutbolista2 = stdin.readLineSync()!;
  print('Posición:');
  String posicionFutbolista2 = stdin.readLineSync()!;
  print('Goles:');
  int golesFutbolista2 = int.parse(stdin.readLineSync()!);
  Futbolista futbolista2 = Futbolista(nombreFutbolista2, edadFutbolista2, equipoFutbolista2, posicionFutbolista2, golesFutbolista2);
  personas.add(futbolista2);

  print('Ingrese los datos del programador 1:');
  print('Nombre:');
  String nombreProgramador1 = stdin.readLineSync()!;
  print('Edad:');
  int edadProgramador1 = int.parse(stdin.readLineSync()!);
  print('Salario:');
  double salarioProgramador1 = double.parse(stdin.readLineSync()!);
  Programador programador1 = Programador(nombreProgramador1, edadProgramador1, salarioProgramador1);
  personas.add(programador1);

  print('Ingrese los datos del programador 2:');
  print('Nombre:');
  String nombreProgramador2 = stdin.readLineSync()!;
  print('Edad:');
  int edadProgramador2 = int.parse(stdin.readLineSync()!);
  print('Salario:');
  double salarioProgramador2 = double.parse(stdin.readLineSync()!);
  Programador programador2 = Programador(nombreProgramador2, edadProgramador2, salarioProgramador2);
  personas.add(programador2);

  // Mostrar resultados
  for (Persona persona in personas) {
    if (persona is Futbolista) {
      Futbolista futbolista = persona;
      print('Futbolista: ${futbolista.nombre}, ${futbolista.edad} años, equipo: ${futbolista.equipo}, posición: ${futbolista.posicion}, goles: ${futbolista.goles}, es titular: ${futbolista.esTitular()}');
    } else if (persona is Programador) {
      Programador programador = persona;
      print('Programador: ${programador.nombre}, ${programador.edad} años, salario neto: ${programador.obtenerSalarioNeto()}');
    }
    
  
  }
  
}