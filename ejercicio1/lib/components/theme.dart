import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  // Tema Claro
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.red,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      elevation: 4,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.caveat(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 202, 22, 22),
      ),
      bodyLarge: GoogleFonts.sourceCodePro(
        fontSize: 18,
        color: Colors.black,
        fontStyle: FontStyle.italic,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  );

  // Tema Oscuro
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.red[900],
    scaffoldBackgroundColor: const Color(0xFF121212),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 96, 10, 10),
      foregroundColor: Colors.grey,  
      elevation: 4,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.caveat(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.sourceCodePro(
        fontSize: 18,
        color: Colors.white,
        fontStyle: FontStyle.italic,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  );
}

// Notifier para manejar el cambio de tema
class ThemeNotifier extends ValueNotifier<ThemeMode> {
  ThemeNotifier() : super(ThemeMode.light);

  void toggleTheme() {
    value = (value == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light;
  }

  bool get isDarkMode => value == ThemeMode.dark;
}