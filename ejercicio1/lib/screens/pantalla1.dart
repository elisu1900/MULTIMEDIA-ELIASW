import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 
import '../components/mi_drawer.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos Personales'),
        backgroundColor: Colors.red,
      ),
      
      drawer: const MiDrawer(),
      
      
      body: Center( 
        child: Padding( 
          padding: const EdgeInsets.all(20.0), 
          
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              
              
              Text(
                "ELIAS WASSIT CALZADO",
                style: GoogleFonts.caveat( 
                  fontSize: 32, 
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 202, 22, 22), 
                ),
                textAlign: TextAlign.center, 
              ),
              
              
              const SizedBox(height: 30), 
              
              Text(
                "https://github.com/elisu1900/MULTIMEDIA.git",
                style: GoogleFonts.sourceCodePro(
                  fontSize: 18,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}