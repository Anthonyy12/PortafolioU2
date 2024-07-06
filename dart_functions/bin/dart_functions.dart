import 'dart:io';

int suma(int a, int b) {
  return a + b;
}

void saludar(String nombre) {
  print("Hola $nombre!");
}

//Declarar funcino con parametros opcionales
void imprimirTicket(String producto, [int cantidad = 1, int monto = 10]) {
  print("$producto, $cantidad, $monto");
}

void imprimirCorreo(String correo, {String remitente = "Anonimo"}) {
  print("$correo, $remitente");
}

var miResta = (int a, int b) => a - b;
void main(List<String> arguments) {
  /*
  int n1, n2;
  print('Teclea un numero: ');
  n1 = int.parse(stdin.readLineSync()!);
  print('Teclea otro numero: ');
  n2 = int.parse(stdin.readLineSync()!);

  print("La suma es: ${suma(n1, n2)}");

  saludar("Alek");
  
  imprimirTicket("Azulito");
  imprimirTicket("Churrumaiz", 5, 30);
  imprimirCorreo("antonio@utng.mx");
  imprimirCorreo("antonio@utng.mx", remitente: "Lichita");
  */
  miFuncion(int a, int b) => a + b;
  print(miFuncion(56, 33));
  print(miResta(35, 12));

  var numeros = [1, 2, 3, 4];
  for (var num in numeros) {
    print("Numero: $num");
  }
}
