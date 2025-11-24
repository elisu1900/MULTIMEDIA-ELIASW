import 'package:ejercicio1/components/mi_drawer.dart';
import 'package:ejercicio1/routes/app_routes.dart';
import 'package:ejercicio1/screens/splash_screen.dart'; 
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Actividad 1",
      theme: ThemeData(primarySwatch: Colors.red),
      home: SplashTransition(),
      routes: AppRoutes.getRoutes(), 
      debugShowCheckedModeBanner: false,
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplicación de Elias Wassit"),
        backgroundColor: Colors.redAccent,
      ),
      drawer: const MiDrawer(),
      body: const Center(
        child: Text(
          "abre el menu drawer",
          style: TextStyle(fontSize: 20)
        ),
      ),
    );
  }
}