//Para manejar las Sedes
//Place = Lugar en Ingles
class Place{
  String nombre;
  int tipo;
  String direccion;
  bool verificado=false;
  String fechallegada="";
  String fechatermino="";

  //Constructor
  Place({required this.nombre, required this.direccion, this.tipo=0});
}