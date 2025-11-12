import 'package:flutter/material.dart';

class Pantalla12 extends StatefulWidget {
  const Pantalla12({super.key});

  @override
  State<Pantalla12> createState() => _Pantalla12State();
}



class _Pantalla12State extends State<Pantalla12> {
  int veces = 0;

  void incrementar() {
    setState(() {
      veces++;
    });
  }

  void puestaACero() {
    setState(() {
      veces = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Has pulsado :",
            style: TextStyle(fontSize: 25),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Text(
            veces == 1 ? "$veces vez" : "$veces veces",
            style: TextStyle(fontSize: 35),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: puestaACero,
          child: Text("Puesta a cero"),
        ),
        SizedBox(height: 20),
        FloatingActionButton(
          onPressed: incrementar,
          tooltip: "Incrementar",
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
