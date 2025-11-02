import 'package:ejercicio1/components/mi_drawer.dart';
import 'package:flutter/material.dart';

class Pantalla10 extends StatefulWidget {
  const Pantalla10({super.key});

  @override
  State<Pantalla10> createState() => _Pantalla10State();
}

class _Pantalla10State extends State<Pantalla10> {
  int veces = 0;

  void incrementar() {
    setState(() {
      veces++;
    });
  }

  void decrementar() {
    setState(() {
      if (veces > 0) {
        veces--;
      }
    });
  }

  void puestaACero() {
    setState(() {
      veces = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de clics'),
        backgroundColor: Colors.red,
      ),
      drawer: const MiDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Has pulsado:",
              style: TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              veces == 1 ? "$veces vez" : "$veces veces",
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: puestaACero,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            child: const Text(
              "Puesta a cero",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            heroTag: "btn_decrementar",
            onPressed: decrementar,
            tooltip: "Decrementar",
            backgroundColor: Colors.red,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            heroTag: "btn_incrementar",
            onPressed: incrementar,
            tooltip: "Incrementar",
            backgroundColor: Colors.green,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}