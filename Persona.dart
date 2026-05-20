class Persona{

    late String _nombre ,_apellido;
    String get nombre => _nombre;
    String get apellido => _apellido;
    set nombre(String nombre)=> _nombre=nombre;
    set apellido(String apellido)=> _apellido=apellido;

    String nombre_Completo(){
      return '$_nombre $_apellido';
    }
    Persona(this._nombre,this._apellido);
  
    String getNombre() => _nombre;
    String getApellido()=>_apellido;
    void setNombre(String nombre){
      this._nombre=nombre;
    }
    void setApellido(String apellido){
      this._apellido=apellido;
    }


  }