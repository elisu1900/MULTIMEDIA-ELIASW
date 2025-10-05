import 'package:flutter/material.dart';
import '../components/mi_drawer.dart';

class Pantalla5 extends StatelessWidget {
  const Pantalla5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("5 Imágenes en Columnas"),
        backgroundColor: Colors.red,
      ),
      drawer: const MiDrawer(),
      
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                

                ClipRRect( 
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/gato1.jpg', 
                    width: 200,
                    height: 150,
                    fit: BoxFit.cover, 
                  ),
                ),
                
                const SizedBox(height: 15), 
                

                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/gato2.jpg',
                    width: 200,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                
                const SizedBox(height: 15),
                
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/gato3.jpg', 
                    width: 200,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                
                const SizedBox(height: 15),
                
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/gato4.jpg', 
                    width: 200,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                
                const SizedBox(height: 15),
                
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/gato5.png', 
                    width: 200,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}