import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:practica3_5b24/models/alumno.dart';

// Instancia a la base de datos en firebase
FirebaseFirestore db = FirebaseFirestore.instance;

// Abrir la base de datos (conectar)
Future<List> getAlumnos() async {
  List alumnos = [];
  CollectionReference collectionReferenceAlumnos = db.collection('alumnos');

  // Recuperar los datos
  QuerySnapshot queryAlumnos = await collectionReferenceAlumnos.get();
  queryAlumnos.docs.forEach((documento) {
    alumnos.add(documento.data());
  });
  return alumnos;
}
