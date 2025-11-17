import 'package:ejercicio1/components/mi_drawer.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class Pantalla12 extends StatefulWidget {
  const Pantalla12({super.key});

  @override
  State<Pantalla12> createState() => _Pantalla12();
}

class _Pantalla12 extends State<Pantalla12> {
  int points = 0;
  String randomName = '';
  Color randomColor = Colors.blue;
  Timer? _timer;

  final Random _random = Random();
  final Map<Color, String> colorMap = {
    const Color(0xFF0000FF): 'azul',
    const Color(0xFF00FF00): 'verde',
    const Color(0xFFFF914D): 'naranja',
  };

  @override
  void initState() {
    super.initState();
    getRandomColorAndName();
    timer();
  }

  void timer() {
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      if (mounted) {
        getRandomColorAndName();
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de clics'),
        backgroundColor: Colors.red,
      ),
      drawer: const MiDrawer(),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Puntos: $points',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                onColortTap(randomName, randomColor);
              },
              child: Column(
                children: [
                  Container(width: 120, color: randomColor, height: 120),
                  Text(
                    randomName,
                    style: TextStyle(
                      color: randomColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void getRandomColorAndName() {
    final colors = colorMap.keys.toList();
    final names = colorMap.values.toList();
    
    assert(colors.length == names.length, 'Los colores y nombres deben tener la misma longitud');
    
    randomColor = colors[_random.nextInt(colors.length)];
    randomName = names[_random.nextInt(names.length)];
  }

  String colorToString(Color color) {
    return colorMap[color] ?? 'desconocido';
  }

  void onColortTap(String name, Color color) {
    var colorName = colorToString(color);
    if (name == colorName) {
      points++;
    } else {
      if (points > 0) {
        points--;
      }
    }
    setState(() {});
  }
}