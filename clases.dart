import 'Persona.dart';

class Empleado {
  String _name;
  late String _lastName;
  late String _deparment;
  late int _age;
  Empleado(this._name, this._lastName, this._deparment, this._age) {}
  Empleado.aporte(this._name, this._lastName, this._deparment, this._age) {}
  @override
  String toString() {
    // TODO: implement toString
    return "El nombre del empleado es ${this._name} su apellido es ${_lastName} su depatamento en el empresa es: ${_deparment} y su edad es: ${_age}";
  }

  String getName() {
    return this._name;
  }

  void setName(String name) {
    this._name = name;
  }
}

class Punto2D {
  final double x, y;
  Punto2D(this.x, this.y) {}
  Punto2D.cero()
    : x = 0,
      y =
          0 //inicializacion de objetos esto es una lista cuando trabajamos con final podemos usar una lista aqui se ve ques necesario
  //
  {}
  Punto2D.fromJson(Map<String, dynamic> json) : x = json['x'], y = json['y'] {}
}

class Color {
  late int r, g, b;
  Color(this.r, this.g, this.b);
  @override
  String toString() {
    // TODO: implement toString
    return "Color($r,$g,$b)";
  }

  static final Color rojo = Color(255, 0, 0);
  static void mezcla(Color a, Color b){
   var colorNuevo= Color(((a.r + b.r)/2).round(), ((a.g + b.g)/2).round(),((a.b+b.b)/2).round());
  print("El color nuevo es: $colorNuevo");
  }
}

void main() {
  Empleado empleado1 = Empleado.aporte(
    "Saul",
    "Mendoza",
    "Ingenierio Hispano",
    26,
  );

  print(empleado1._name);
  print(empleado1.toString());
  var p1 = Punto2D.cero();
  print('${p1.x}, ${p1.y}');
  var p2 = Punto2D.fromJson({'x': 0.5, 'y': 7.1});
  print({"Cordernada x": ' ${p2.x}', "Cordernada y": ' ${p2.y}'});
  var p3 = Persona("Saul", "Mendoza");
  print(p3.nombre_Completo());

  p3.setNombre("Hola");
  p3.setApellido("Mundo");
  print({"Nombre": p3.getNombre(), "Apellido": p3.getApellido()});

  p3.nombre = "Gracias";
  p3.apellido = "A todos";

  print({"Nombre": p3.nombre, "Apellido": p3.apellido});
  print(Color.rojo);
  var negro= Color(0, 0, 0);
  var blanco=Color(255,255,255);
  Color.mezcla(negro, blanco);
}
