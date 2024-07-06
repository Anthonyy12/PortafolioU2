void main() {
  //Declaramos una lista
  List<int> scores = [10, 20, 30];

  print('Imprime el primer valor de la lista: ${scores[0]}');
  for (var i = 0; i < 3; i++) {
    print(scores[i]);
  }

  scores.remove(10);
  print('Eliminando 10 de la lista scores: $scores');

  scores.add(40);
  print('Agregando 40 a la lista scores: $scores');

  print('El primer elemento de la lista es: ${scores.first}');
  print('El último elemento de la lista es: ${scores.last}');

  for (var s in scores) {
    print('Ciclo for para scores: $s');
  }

  for (var s in scores) {
    print(s);
  }
}
