// Definición de los temas de estilo de la app
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Constante de color primario
  static const primaryColor = Color.fromARGB(255, 255, 0, 0);
  //Constante de color secundario
  static const secondaryColor = Colors.black;
  // Constante de color de fondo
  static const backColor = Color.fromARGB(238, 237, 239, 240);

  // Constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(
      color: primaryColor,
    ),
    textTheme: TextTheme(
      // Títulos muy grandes
      headlineLarge: GoogleFonts.nothingYouCouldDo(
        color: primaryColor,
        fontSize: 26.5,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: primaryColor,
        decorationStyle: TextDecorationStyle.double,
        decorationThickness: 1.2,
      ),

      // Estilo para texto muy pequeño
      bodySmall: GoogleFonts.montserrat(
        color: secondaryColor,
        fontStyle: FontStyle.italic,
        fontSize: 18.0,
      ),
    ),
  );
}
