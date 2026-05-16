//Las funciones se declaran como en c++
int max3(int a, int b, int c) {
  int r = a;
  if (b > r) r = b;
  if (c > r) r = c;
  return r;
}

//Si no hay tipo de retorno, la funcion devuelve null de todas formas
f() {
  print("No hago nada bueno");
}

//Párametros /////////////////////////////////////////////////////////

String transforma_A(String s, bool mayusc, int exclama) {
  if (mayusc) {
    s = s.toUpperCase();
  }
  s += '!' * exclama;
  return s;
}

//Parametros opcionales
String transforma_B(String s, [bool? mayusc, int? exclama]) {
  if (mayusc != null) {
    s = s.toUpperCase();
  }
  if (exclama != null) {
    s += '!' * exclama;
  }
 
  return s;
}
//parametros nombres
String transforma_C({required String s, bool? mayusc, int? exclama}) {
  if (mayusc != null) {
    s = s.toUpperCase();
  }
  if (exclama != null) {
    s += '!' * exclama;
  }
 
  return s;
}

//Requiered 
void parametroRequired({required String? texto}){
   print(""" Devuelve el parametro ques  obligatorio si queremos
   que un campo opcional sea obligatorio  ${texto} """);
}

//Las funciones son valores ///////////////////////

void muestra_lista(List<dynamic>lista){
  lista.forEach(print);
}
var muestra_lista_copia = muestra_lista;

// Funciones anonimas
var dupl=(double a){return a*2.0;}; 

void muestra_lista_B(List<dynamic>lista){
  int i = 0;
   lista.forEach((elem)=>print("El elemento guardado es ${elem} en el indice: ${i++}"));
  
}

//Funciones flecha (arrow funcitons)
var tipple_A = (double x) =>x*3.0;

void cuenta(List<dynamic> lista)=> lista.forEach((element) =>print("El nombre de la cuentas son: ${element}"));  


////////////////////////////////////////////////////////////////////
//Funciones anidadas
void muestra_lista_D(List lista){
  void muestra_elemento(elem){
    print("Elemento: $elem");
  }
  lista.forEach(muestra_elemento);
}
//////////////////////////////////////////////////////////////////
//Clouseres (Clausuras)
//1._ Las funciones son valores (por tanto se pueden devolver como resultados de otras funcion)
//2._ Si estan anidadas tienen acceso al entorno de la funcion que las contiene
nuevoSumador(double dx){
  return (double x)=> x +dx;
  }

//////////////////////////////////////////////////////////////////////

void main() {
  print(max3(10, 12, 16));
  print(f());
  print(transforma_A('Como estas', true, 5));
  
  print(transforma_B('adios',true,3));
  print(transforma_C(mayusc: true,exclama: 10,s: "Hola a todos "));
  parametroRequired(texto: "El texto que necesites bebe");
  muestra_lista([null,'hola',345]);
  print(dupl(5));
  muestra_lista_B(["Elemento dado", 34,2321.21,["Peru es clave","Dale boee",213],"hola","hola"]);
  print(tipple_A(6));
  cuenta(["Saul mendoza","Erika Van Der", "Gustav deprotovick"]);
  muestra_lista_D(["Lista de la lista","Ojo",32]);
  var suma5= nuevoSumador(5);
  print(suma5(10.0));
}
