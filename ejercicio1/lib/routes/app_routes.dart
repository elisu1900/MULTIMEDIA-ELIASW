// lib/routes/app_routes.dart
import 'package:flutter/material.dart';
import '../screens/pantalla1.dart';
import '../screens/pantalla2.dart';
import '../screens/pantalla3.dart';
import '../screens/pantalla4.dart';
import '../screens/pantalla5.dart';
import '../screens/pantalla6.dart';
import '../screens/pantalla7.dart';
import '../screens/pantalla8.dart';
import '../screens/pantalla9.dart';
import '../screens/pantalla10.dart';
import '../screens/pantalla11.dart';
import '../screens/pantalla12.dart';

class AppRoutes {
  // Nombres de las rutas
  static const String pantalla1 = '/pantalla1';   // ✅ Sin ./screen/
  static const String pantalla2 = '/pantalla2';
  static const String pantalla3 = '/pantalla3';
  static const String pantalla4 = '/pantalla4';
  static const String pantalla5 = '/pantalla5';
  static const String pantalla6 = '/pantalla6';
  static const String pantalla7 = '/pantalla7';
  static const String pantalla8 = '/pantalla8';
  static const String pantalla9 = '/pantalla9';
  static const String pantalla10 = '/pantalla10';
  static const String pantalla11 = '/pantalla11';
  static const String pantalla12 = '/pantalla12';
  
  // Mapa de rutas
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      pantalla1: (context) => const Pantalla1(),
      pantalla2: (context) => const Pantalla2(),
      pantalla3: (context) => const Pantalla3(),
      pantalla4: (context) => const Pantalla4(),
      pantalla5: (context) => const Pantalla5(),
      pantalla6: (context) => const Pantalla6(),
      pantalla7: (context) => const Pantalla7(),
      pantalla8: (context) => const Pantalla8(),
      pantalla9: (context) => const Pantalla9(),
      pantalla10: (context) => const Pantalla10(),
      pantalla11: (context) => const Pantalla11(),
      pantalla12: (context) => const Pantalla12(),
    };
  }
}