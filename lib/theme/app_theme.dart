// Definición de los temas de estilo de la app
import 'package:flutter/material.dart';

class AppTheme {
  //Constante de color primario
  static const primaryColor = Color.fromARGB(255, 255, 0, 0);
  // Constante de color de fondo
  static const backColor = Color.fromARGB(218, 253, 242, 193);
  // Constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: backColor,
      appBarTheme: const AppBarTheme(
        color: primaryColor,
      ));
}
