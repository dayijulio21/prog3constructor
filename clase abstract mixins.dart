abstract class Carro {
  void encender(); // Método abstracto

  void apagar() {
    print("El carro se ha apagado.");
  }
}

class Deportivo extends Carro {
  @override
  void encender() {
    print("El carro deportivo se enciende con un rugido potente!");
  }
}

class Sedan extends Carro {
  @override
  void encender() {
    print("El carro sedán se enciende suavemente.");
  }
}

void main() {
  var miDeportivo = Deportivo();
  miDeportivo.encender();
  miDeportivo.apagar();

  var miSedan = Sedan();
  miSedan.encender();
  miSedan.apagar();
}