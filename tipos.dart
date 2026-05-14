void tipo_basicos(){
  // Todos son objetos en dart
  // Todas las variable contienen referencias a objetos
  //Las variables solo pueden referirse a objetos del tipo concordante
  int entero =23;
  double decimal =23.2312;
  String cadena_texto ="Hola como estas";
  bool condicionales = false;

  String s2 ='';
  String comilla_simple = "''";
  String comilla_doble = '""';
   int a ; // será null
     

}


void demoVarDynamicNum(){
  // Al poner var se infiere el tipo (del literal o del tipo de retorno,etc)

 var entero = 2;
 var decimal =23.3;
 //Existe un tipo para "cualquier cosa"

 var cadena_caracteres = "Una cadena en tipo dinamico";
 dynamic c; //Engloba cualquier objeto
// num es "numerico" y es tipo base de 'double' y 'int'
  num x =4.3;
   num y= decimal;

   print({x,y});
}
void demoConversion(){
  //Conversion numerico a String
  int a = 8;
  double b=3.14;
  String sa = a.toString();
  String sb = b.toString();
  String sc = 342.toString();
  print({sa,sb,sc});
  String  sa2 = '$a';
  print(sa2);
  //Conversion String a número

  String cs ='954';
  String ds='2.32';
  int c = int.parse(cs);
  double d = double.parse(ds);
  
  print({c,d});

}

void interpolacionStrings(){
  //Interpolación de Strings
  double euros = 45.70;
  String mensaje = "Tengo ${euros} euros";
  String mensaje2= "Si tuviera 5 euros mas tendria ${euros+5}";
  print({mensaje,mensaje2});
}

void stringsLargos(){
//Literales de string seguidos se pegan
  var texto = 'En algur lugar de la mancha '
 'cuyo nombre no quiero acordarme'
  ' vivia un hidalgo...'
   ;

//Literal con lineas por medio
   var texto2 = """ 
   Un texto largo con varias líneas.
   Esa es la segunda 
   y esta es la tercera.
   """;
   var s ='James ' + 'Bond'; //el + junsta strings
print (texto);
print(texto2);
print(s);
}

void buclesCondicionales(){
  bool a =true;
  // En un if solo puede ir bool o bien dynamic (que deberia ser bool)
  if(a){
    print("a es 0");
  }
}