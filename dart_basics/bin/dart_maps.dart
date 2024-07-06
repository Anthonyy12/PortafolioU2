void main() {
  //Crear un mapa
  Map<String, int> notas = {'ddi': 10, 'bd': 8, 'iot': 7, 'in': 10};
  print(notas);

  //Imprimir calificacion bd
  print('\nImprimir la calificacion de bd: ${notas['bd']}');
  notas['bd'] = 10;
  print('\nCambiar calificacion de bd: ${notas['bd']}');

  notas.remove('iot');
  print(notas);

  for (var nota in notas.keys) {
    print('\nCiclo for para notas: $nota: ${notas[nota]}');
  }

  notas.forEach((key, value) => print('$key: $value'));
}
