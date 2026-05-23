import 'tipo_variable.dart';

void tipo_basicos() {
  // Todos son objetos en dart
  // Todas las variable contienen referencias a objetos
  //Las variables solo pueden referirse a objetos del tipo concordante
  int entero = 23;
  double decimal = 23.2312;
  String cadena_texto = "Hola como estas";
  bool condicionales = false;

  String s2 = '';
  String comilla_simple = "''";
  String comilla_doble = '""';
  int a; // será null
}

void demoVarDynamicNum() {
  // Al poner var se infiere el tipo (del literal o del tipo de retorno,etc)

  var entero = 2;
  var decimal = 23.3;
  //Existe un tipo para "cualquier cosa"

  var cadena_caracteres = "Una cadena en tipo dinamico";
  dynamic c; //Engloba cualquier objeto
  // num es "numerico" y es tipo base de 'double' y 'int'
  num x = 4.3;
  num y = decimal;

  print({x, y});
}

void demoConversion() {
  //Conversion numerico a String
  int a = 8;
  double b = 3.14;
  String sa = a.toString();
  String sb = b.toString();
  String sc = 342.toString();
  print({sa, sb, sc});
  String sa2 = '$a';
  print(sa2);
  //Conversion String a número

  String cs = '954';
  String ds = '2.32';
  int c = int.parse(cs);
  double d = double.parse(ds);

  print({c, d});
}

void interpolacionStrings() {
  //Interpolación de Strings
  double euros = 45.70;
  String mensaje = "Tengo ${euros} euros";
  String mensaje2 = "Si tuviera 5 euros mas tendria ${euros + 5}";
  print({mensaje, mensaje2});
}

void stringsLargos() {
  //Literales de string seguidos se pegan
  var texto =
      'En algur lugar de la mancha '
      'cuyo nombre no quiero acordarme'
      ' vivia un hidalgo...';

  //Literal con lineas por medio
  var texto2 = """ 
   Un texto largo con varias líneas.
   Esa es la segunda 
   y esta es la tercera.
   """;
  var s = 'James ' + 'Bond'; //el + junsta strings
  print(texto);
  print(texto2);
  print(s);
}

void condicionesBooleanas() {
  bool a = true;
  // En un if solo puede ir bool o bien dynamic (que deberia ser bool)
  if (a) {
    print("a es 0");
  }
  var s = '';
  if (s.isEmpty) {
    print("s esta vacio");
  }
}

void demoLista() {
  List<int> primos = [2, 3, 5, 7, 11, 13];
  List<dynamic> cosas = [2, true, 'hola', [], null];
  print(primos);
  print(cosas);

  var nums = [1, 2, 3];
  nums.add(100);
  print(nums);
  print(primos.length);
  print(nums.length);

  //Como especificar el tipo de un literal
  var palabras = <String>['hola', 'que', 'tal'];
  var guardarPalabras = <String>[];
  guardarPalabras.add("Casa");
  print({palabras, guardarPalabras});

  //Acceder a las casilla de una lista mediante el indice;
  for (var i = 0; i < palabras.length; i++) {
    print(palabras[i]);
  }
}

void collectionFor() {
  bool larga = true;
  var L = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, if (!larga) 12];
  while (larga) {
    for (var i = 0; i < L.length; i++) {
      if (L[i] == 10) {
        L.add(11);
        larga = false;
      }
    }
  }
  print(larga);
  print(L);

  //Otra forma de hacer un bucle
  var M = [0, for (int i = 0; i < 20; i++) i + 1, 21];
  print(M);
}

void demoSets() {
  //Sets
  Set<int> primos = {2, 3, 4, 7, 11};
  Set<dynamic> cosas = {
    null,
    2,
    'hola',
    true,
    [1],
  };
  var numeros = {1, 2, 3, 4};
  var conjunto_vacio_map = {}; //esto es un map
  var conjunto_vacio_Set = <String>{}; //Esto es un Set<String> no un map
  print({primos, cosas, numeros, conjunto_vacio_map, conjunto_vacio_Set});
  numeros.add(5);
  numeros.addAll({6, 7, 8, 9});
  numeros.addAll([10, 11, 12, 13]);
  if (numeros.contains(2)) {
    print("tiene 2");
  }
  print(numeros);
}

void demoMaps() {
  var M = {'nombre': 'james', 'apellido': 'Bond', 'edad': 27};
  Map<int, String> numeros = {1: 'uno', 2: 'dos', 3: 'tres', 4: 'cuatro'};
  print(numeros[3]);
  print(numeros[4]);
  numeros[5] = 'cincos';

  Map<dynamic, dynamic> cosas = {
    2: 'dos',
    'tres': 3,
    false: 'cosas',
    2.32: 'ASI SUCESIVAMENTE',
    34: 23.3,
  };
  cosas.addAll(numeros);
  print({M, numeros, cosas});
}

void main() {
  condicionesBooleanas();
  demoLista();
  collectionFor();
  demoSets();
  demoMaps();
  print("ya esta");
}
