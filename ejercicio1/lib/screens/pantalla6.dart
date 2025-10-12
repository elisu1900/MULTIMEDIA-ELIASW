import 'package:auto_size_text/auto_size_text.dart';
import 'package:ejercicio1/components/mi_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pantalla6 extends StatelessWidget {
  const Pantalla6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Texto en filas"),
        backgroundColor: Colors.red,
      ),
      drawer: MiDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        "Este texto es tan largo que no cabe en el contenedor porque tiene demasiadas palabras y caracteres, demostrando cómo AutoSizeText ajusta el tamaño automáticamente",
                        style: GoogleFonts.pacifico(
                          fontSize: 30,
                          color: Colors.red[900],
                        ),
                        maxLines: 3,
                        minFontSize: 12,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 20),
                
                child: Row(
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        "Este texto es tan largo que no cabe en el contenedor porque tiene demasiadas palabras y caracteres, demostrando cómo AutoSizeText ajusta el tamaño automáticamente Este texto es tan largo que no cabe en el contenedor porque tiene demasiadas palabras y caracteres, demostrando cómo AutoSizeText ajusta el tamaño automáticamente",
                        style: const TextStyle(
                          fontFamily: 'serif',
                          fontSize: 28,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 3,
                        minFontSize: 12,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),

              
              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(10),
                
                child: Row(
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        "Este texto es tan largo que no cabe en el contenedor porque tiene demasiadas palabras y caracteres, demostrando cómo AutoSizeText ajusta el tamaño automáticamente Este texto es tan largo que no cabe en el contenedor porque tiene demasiadas palabras y caracteres, demostrando cómo AutoSizeText ajusta el tamaño automáticamente Este texto es tan largo que no cabe en el contenedor porque tiene demasiadas palabras y caracteres, demostrando cómo AutoSizeText ajusta el tamaño automáticamente",
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 26,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 3,
                        minFontSize: 12,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}