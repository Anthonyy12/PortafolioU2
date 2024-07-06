import 'figura.dart';

//Crear la funcion main
void main() {
  var circulo = Circulo(8);
  print(
      "El Area del circulo con radio ${circulo.radio} es: ${circulo.calcularArea()}");

  var rectangulo = Rectangulo(2, 8);
  print(
      "El Area del rectangulo con una base ${rectangulo.base} y una altura ${rectangulo.altura} es: ${rectangulo.calcularArea()}");
}
