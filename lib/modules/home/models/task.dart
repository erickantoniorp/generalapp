class Task{
  String nombre;
  String descripcion;
  //bool ?verificado;
  //String ?fechallega;
  //String ?fechatermina;
  String ?fechaejec;
  String numtarea;
  int estado=1;
  Task({
    required this.nombre, required this.descripcion, required this.numtarea, required this.fechaejec
  });
}