import 'package:flutter/material.dart';
import '../components/mi_drawer.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("3 fotos en columna"),
        backgroundColor: Colors.red,
      ),
      drawer: const MiDrawer(),
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/perro1.png',
                      width: 100,  
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/perro2.jpg',
                      width: 100,  
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/perro3.jpg',
                      width: 100,  
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
