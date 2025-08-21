class Persona {
  String nombre;
  String apellido;
  int edad;

  // Constructor principal con assert
  Persona(this.nombre, this.apellido, this.edad)
      : assert(edad >= 0, 'La edad no puede ser negativa') {
    if (edad >= 18) {
      print('$nombre $apellido es mayor de edad');
    } else {
      print('$nombre $apellido es menor de edad');
    }
  }

  // Constructor nombrado que recibe un mapa
  Persona.fromMap(Map<String, dynamic> datos)
      : nombre = datos['nombre'],
        apellido = datos['apellido'],
        edad = datos['edad'] {
    assert(edad >= 0, 'La edad no puede ser negativa');
    if (edad >= 18) {
      print('$nombre $apellido es mayor de edad');
    } else {
      print('$nombre $apellido es menor de edad');
    }
  }

  // Sobrescribir toString()
  String toString() {
    return 'Nombre: $nombre, Apellido: $apellido, Edad: $edad';
  }
}

void main() {
  // Usando el constructor principal
  var persona1 = Persona('Dayi', 'julio', 21);
  print(persona1);

  // Usando el constructor nombrado con un mapa
  var persona2 = Persona.fromMap({
    'nombre': 'yida',
    'apellido': 'julio',
    'edad': 16,
  });
  print(persona2);
}