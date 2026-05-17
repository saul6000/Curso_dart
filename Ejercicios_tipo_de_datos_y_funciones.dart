void calculadora_edad(String nombre,DateTime fecha_nacimiento ){
  int age =DateTime.now().year-fecha_nacimiento.year;
  print("Tu edad ${nombre} es: ${age} years!!!");
  
}

void celciusAFahrenheit(double celcius){
  var fanhrenheit = ((9/5)*celcius)+32; 
  print("${celcius}º a fahrenheit es: ${fanhrenheit}º");
}
void fahrenheitACelcius(double fahrenheit){
  var celcius = (5/9)*(fahrenheit-32); 
  print("${fahrenheit}º a celcius es: ${celcius}º");
}

void sistema_simple_notas(String estudiante,List<double> lista){
  double promedio = lista.reduce((primeraNota,segundaNota)=>primeraNota+segundaNota)/lista.length;
  String estadoEstudiante(){
    return "El promedio del estudiante ${estudiante} es de ${promedio}";
  }
  print(estadoEstudiante());
}
void main(){
  calculadora_edad("Saul Samir Mendoza Moreira", DateTime(2000));
  celciusAFahrenheit(23);
  fahrenheitACelcius(180);
  sistema_simple_notas("Saul Mendoza", [10,10,10,9,9,10,8.9]);
}