import 'package:ejercicio1/components/mi_drawer.dart';
import 'package:flutter/material.dart';

class Pantalla7 extends StatelessWidget {
  const Pantalla7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imágenes Repetidas"),
        backgroundColor: Colors.red,
      ),
      drawer: const MiDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Imagen de Assets repetida 3 veces
              const Text(
                "Imagen de Assets",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
              ),
              const SizedBox(height: 10),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Imagen 1 de Assets
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.asset(
                        'assets/perro1.png', 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  
                  // Imagen 2 de Assets
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.asset(
                        'assets/perro1.png', 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  
                  // Imagen 3 de Assets
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.asset(
                        'assets/perro1.png', 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 30),
              const SizedBox(height: 30),

              // Imagen de Internet repetida 3 veces
              const Text(
                "Imagen de Internet",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              const SizedBox(height: 10),
              
              // Imagen 1 de Internet
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1543466835-00a7907e9de1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDExfHx8ZW58MHx8fHx8', 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              const SizedBox(height: 15),
              
              // Imagen 2 de Internet
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1543466835-00a7907e9de1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDExfHx8ZW58MHx8fHx8', 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              const SizedBox(height: 15),
              
              // Imagen 3 de Internet
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1543466835-00a7907e9de1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDExfHx8ZW58MHx8fHx8', 
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}