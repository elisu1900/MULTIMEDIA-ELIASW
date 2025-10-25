import 'package:ejercicio1/components/mi_drawer.dart';
import 'package:flutter/material.dart';

class Pantalla8 extends StatelessWidget {
  const Pantalla8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imágenes en filas"),
        backgroundColor: Colors.red,
      ),
      drawer: const MiDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
//PRIMERA FILA
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    const Text("paisaje lavanda"),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.asset(
                        'assets/paisaje1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
//SEGUNDA FILA
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: 
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Column(
                          children: [
                            const Text("paisaje glovo"),
                            const SizedBox(height: 8),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.asset(
                        'assets/paisaje2.jpg',
                        fit: BoxFit.cover,
                      ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child:Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            const Text("paisaje montaña"),
                            const SizedBox(height: 8),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.asset(
                                    'assets/paisaje3.jpg',
                                    fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                        )
                    ),
                  ],
                ),
              ),
//TERCERA FILA
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Column(
                          children: [
                            Text("paisaje pradera arboles"),
                            const SizedBox(height: 8),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.asset(
                                    'assets/paisaje4.jpg',
                                    fit: BoxFit.cover,
                              ),
                            )
                          ] 

                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Column(
                          children: [
                            Text("paisaje amanecer"),
                            const SizedBox(height: 8),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.asset(
                                    'assets/paisaje5.jpg',
                                    fit: BoxFit.cover,
                              ),
                            )
                          ] 
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Column(
                          children: [
                            Text("paisaje pradera bonita"),
                            const SizedBox(height: 8),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.asset(
                                    'assets/paisaje6.jpg',
                                    fit: BoxFit.cover,
                              ),
                            )
                          ] 
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
