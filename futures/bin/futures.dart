void main() {
  print("Inicio del programa");

  //Crear el future
  //Valor o error que estará disponible en un momento futuro
  Future(() {
    return "Hola mundo!";
  }).then((resultado) {
    print(resultado);
  });

  print('Fin del programa');
}
