import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/mi_drawer.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi Foto"),
        backgroundColor: Colors.red,
      ),
      drawer: const MiDrawer(),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            ClipRRect(
              borderRadius: BorderRadius.circular(100), 
              child: Image.asset(
                'assets/miFoto.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover, 
              ),
            ),
            

            
            const SizedBox(height: 20),
            

            Text(
              "Elias Wassit Calzado", 
              style: GoogleFonts.lato(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}