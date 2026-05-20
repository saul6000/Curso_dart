abstract class Fruta {
  String nombre;
  Fruta(this.nombre);
  double get gramos;
  bool get femenina;

  void comer() {
    var det = (femenina ? "una" : "un");

    print("Te acabas de comer $det $nombre que pesa $gramos");
  }
}

class Manzana extends Fruta {
  Manzana() : super("Manzana") {}

  @override
  // TODO: implement femenina
  bool get femenina => true;

  @override
  // TODO: implement gramos
  double get gramos => 100;
}

class Melon extends Fruta {
  Melon() : super("Melon");
  @override
  void comer() {
    print("Vamos a brir el melon primero...");
    super.comer();
  }

  @override
  // TODO: implement femenina
  bool get femenina => false;

  @override
  // TODO: implement gramos
  double get gramos => 1500;
}
class Arandano extends Fruta{
  Arandano():super("arandano");
  @override
  // TODO: implement femenina
  bool get femenina => false;

  @override
  // TODO: implement gramos
  double get gramos => 20;
  
}
void come_frutas() {
  //var f = Manzana();
  //f.comer();
  //var m2 = Melon();
  //m2.comer();

  var frutas =[
    for(int i=0; i<3;i++)
      Manzana(),Melon(),Arandano()
    
  ];
  frutas.shuffle();
  for (var element in frutas) {
    element.comer();
  }
}

//Mixins
abstract class Animal{
  String nombre;
  Animal(this.nombre);

}
//lista de campos o metodos sera una especie de extra 
mixin PosicionMixin{
  num _x =0 , _y=0;
  num get x => this._x;
  num get y => this._y;
  void set x(num x) => this._x=x;
  void set y(num y) => this._y=y;

  List<num> get pos=>[_x,_y];
  void mueve(int dx, int dy){
    _x +=dx;
    _y+=dy;
  }
}
class Leon extends Animal with PosicionMixin{
  Leon():super("Leon");
}
void main(){
  var x =Leon();
  x.mueve(5, 4);
  x.mueve(2, 2);
  print({x.pos});
}