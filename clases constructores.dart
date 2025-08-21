void main() {
  // Instanciando la clase Persona
  Persona persona1 = Persona(
    "Juan",
    "Pérez",
    25,
    "3001234567",
    "juan@email.com",
  );
  print(persona1);

  // Instanciando la clase Animal
  Animal animal1 = Animal("Perro", "Carlos López", "2020-05-10", [
    "Rabia",
    "Parvovirus",
  ]);
  print(animal1);
}

// Clase Persona
class Persona {
  String nombre;
  String apellido;
  int edad;
  String telefono;
  String email;

  // Constructor
  Persona(this.nombre, this.apellido, this.edad, this.telefono, this.email);

  // Sobrescribir toString
  String toString() {
    return "Persona: $nombre $apellido, Edad: $edad, Teléfono: $telefono, Email: $email";
  }
}

// Clase Animal
class Animal {
  String raza;
  String propietario;
  String fecha_nacimiento;
  List<String> vacunas;

  // Constructor posicional
  Animal(this.raza, this.propietario, this.fecha_nacimiento, this.vacunas);

  // Sobrescribir toString
  String toString() {
    return "Animal: $raza, Propietario: $propietario, Nacimiento: $fecha_nacimiento, Vacunas: ${vacunas.join(', ')}";
  }
}
