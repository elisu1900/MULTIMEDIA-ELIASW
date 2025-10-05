import 'package:flutter/material.dart';
import '../components/mi_drawer.dart';

class Pantalla4 extends StatelessWidget {
  const Pantalla4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("5 iconos en fila"),
        backgroundColor: Colors.red,
      ),
      drawer: const MiDrawer(),
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              

              Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  Icon(
                    Icons.home, 
                    size: 50, 
                    color: Colors.red[700], 
                  ),
                  Icon(
                    Icons.favorite, 
                    size: 50,
                    color: Colors.red[700],
                  ),
                  Icon(
                    Icons.star, 
                    size: 50,
                    color: Colors.red[700],
                  ),
                  Icon(
                    Icons.settings, 
                    size: 50,
                    color: Colors.red[700],
                  ),
                  Icon(
                    Icons.notifications, 
                    size: 50,
                    color: Colors.red[700],
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