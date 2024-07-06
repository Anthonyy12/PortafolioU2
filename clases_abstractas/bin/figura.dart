//Clase abstracta de figura llamada figura
abstract class Figura {
  //Crear un metodo abstracto
  double calcularArea();
}

//Clase especifica de Rectangulo que hereda de figura
class Rectangulo extends Figura {
  //Atributos
  double base, altura;

  //Constructor
  Rectangulo(this.base, this.altura);

  @override
  double calcularArea() {
    return base * altura;
  }
}

class Circulo extends Figura {
  //Atributos
  double radio;

  //Constructor
  Circulo(this.radio);

  //Metodos
  @override
  double calcularArea() {
    return 3.14 * radio * radio;
  }
}
