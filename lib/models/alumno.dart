class Alumno {
  String? nombre;
  String? carrera;
  String? grupo;
  String? localidad;
  double? promedio;

  Alumno(
      {required String name,
      required String career,
      required String group,
      required String location,
      required double prom}) {
    nombre = name;
    carrera = career;
    grupo = group;
    localidad = location;
    promedio = prom;
  }
}
