import 'package:ejercicio1/components/mi_drawer.dart';
import 'package:flutter/material.dart';

class Pantalla9 extends StatelessWidget {
  const Pantalla9({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Challenge gradiente"),
        backgroundColor: Colors.red,
      ),
      drawer: const MiDrawer(),
      body: Center(
  child: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Color(0xFFFBA3660),
          Color(0xFF1C256E),
        ],
        stops: [0.3, 0.75],
      ),
    ),
  ),
)
    );
  }
}