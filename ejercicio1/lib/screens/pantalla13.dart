import 'package:ejercicio1/components/mi_drawer.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class Pantalla13 extends StatefulWidget {
  const Pantalla13({super.key});

  @override
  State<Pantalla13> createState() => _Pantalla13State();
}

class _Pantalla13State extends State<Pantalla13> {
  int puntuacion = 0;
  double posicionX = 0;
  double posicionY = 0;
  bool mostrarImagen = false;
  Timer? temporizador;
  final Random random = Random();

  // Duración de imagen visible
  final int duracionImagen = 1000;

  // Tamaño de la imagen
  final double sizeImagen = 80;

  @override
  void initState() {
    super.initState();
    iniciarJuego();
  }

  void iniciarJuego() {
    generarNuevaPosicion();
  }

  void generarNuevaPosicion() {
    setState(() {
      mostrarImagen = true;
      // Generar posición aleatoria (dejando margen para que no se salga)
      posicionX = random.nextDouble() * 0.7 + 0.1; 
      posicionY = random.nextDouble() * 0.6 + 0.15; 
    });

    temporizador?.cancel();

    temporizador = Timer(Duration(milliseconds: duracionImagen), () {
      if (mounted && mostrarImagen) {
        setState(() {
          if (puntuacion >= 2) {
            puntuacion -= 2;
          } else if (puntuacion == 1) {
            puntuacion -= 1;
          }
          mostrarImagen = false;
        });

        Future.delayed(const Duration(milliseconds: 500), () {
          if (mounted) {
            generarNuevaPosicion();
          }
        });
      }
    });
  }

  void imagenPulsada() {
    temporizador?.cancel();
    setState(() {
      puntuacion += 1;
      mostrarImagen = false;
    });

    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        generarNuevaPosicion();
      }
    });
  }

  void reiniciarJuego() {
    temporizador?.cancel();
    setState(() {
      puntuacion = 0;
      mostrarImagen = false;
    });
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        iniciarJuego();
      }
    });
  }

  @override
  void dispose() {
    temporizador?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juego de Imagenes'),
        backgroundColor: Colors.red,
      ),
      drawer: const MiDrawer(),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(decoration: BoxDecoration(color: Colors.white)),

          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(width: 10),
                    Text(
                      'Puntos: $puntuacion',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          if (mostrarImagen)
            Positioned(
              left: MediaQuery.of(context).size.width * posicionX,
              top: MediaQuery.of(context).size.height * posicionY,
              child: GestureDetector(
                onTap: imagenPulsada,
                  child: SizedBox(
                    width: sizeImagen,
                    height: sizeImagen,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/perro1.png',
                        width: sizeImagen,
                        height: sizeImagen,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                
              ),
            ),
        ],
      ),
    );
  }
}
