//Controlar el flujo del algoritmo con if while for switch is
//
//El if es exactamente igual que en C++/java/javascript...
//h:4,:m:50,s:9 -->"04:50:09"
// StringBuffer
import 'dart:ffi';

void conversorTiempoHHMMSS({int h = 0, int? m, int? s}) {
  var buf = StringBuffer();
  wr(d) {
    if (d < 10) {
      buf.write(0);
    }
    buf.write(d);
  }

  wr(h);
  buf.write(":");
  wr(m);
  buf.write(":");
  wr(s);
  print(buf);
}
  List<String> diasSemana = [
    "Lunes",
    "Martes",
    "Miercoles",
    "Jueves",
    "viernes",
    "Sabado",
    "Domingo",
  ];
//1:Lunes 2:Martes ....
String dia2str_A(int dia) {

  String elDia = "Miercoles";
  if (dia == 1)
    elDia = diasSemana[0];
  else if (dia == 2)
    elDia = diasSemana[1];
  else if (dia == 3)
    elDia = diasSemana[2];
  else if (dia == 4)
    elDia = diasSemana[3];
  else if (dia == 5)
    elDia = diasSemana[4];
  else if (dia == 6)
    elDia = diasSemana[5];
  else
    elDia = diasSemana[6];
  return elDia;
}

//for
bool es_primo(int n) {
  for (int d = 2; d * d <= n; d++) {
    if (n % d == 0) {
      return false;
    }
  }
  return n > 1;
}

//While
List<int> lista_primos(int size) {
  var primos = <int>[];
  int n = 1;
  while (primos.length < size) {
    if (es_primo(n)) {
      primos.add(n);
    }
    n++;
  }
  return primos;
}

// Lista de primos que se separa por dos enteros
List<dynamic> lista_primos_separador_por_dos(List<int> primos) {
  List<dynamic> lista_por_dos = [];
  primos.reduce((a, b) {
    if (a+2 == b) {
      lista_por_dos.add(a);
      lista_por_dos.add(b);
    }
    return b;
  });
  lista_por_dos.removeAt(2);
  return lista_por_dos;
}
//Nota podemos crear una funcion de una lista que sea de tipo lista y con un for in podemos usar el 0 1 como indice List<List<int>>

void muestrameConSwitch(String sdia){
  int dia;
  switch(sdia){
    case 'lunes': dia=1;break;
    case 'martes': dia=2;break;
    case 'miercoles': dia=3;break;
    case 'Jueves': dia=4;break;
    case 'viernes': dia=5;break;
    case 'sabado': dia=6;break;
    case 'domingo': dia=7;break;
    default: dia=-1; print("Ese dia no existe");
  

  }
    if(dia!=-1){
      print("El dia $sdia es el dia numero: $dia");
    }
}
//Switch mejorado
void muestrameConSwitch_Mejorado(String sdia){
  int granDia (String sdia)=> diasSemana.indexOf(sdia);
  granDia(sdia);
  print("El dia $sdia era el dia numero ${granDia(sdia)+1} ");
}
void main() {
  /*
  conversorTiempoHHMMSS(h:2,s:3,m:3);
  print(dia2str_A(4));
  for(int i =0; i <100;i++){
    if(es_primo(i)) print(i);
  }
  print(lista_primos(10));
  var L = lista_primos(10);
  for (var element in L) {
      print(element);
  }*/
  var listilla = lista_primos(20);
  print(listilla);
  print(lista_primos_separador_por_dos(listilla));
  muestrameConSwitch('martes');
  muestrameConSwitch_Mejorado("Lunes");
}
