import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("hola soy Elias"),
          Text("hola soy Elias"),
          Text("hola soy Elias"),
          Text("hola soy Elias"),
          Text("hola soy Elias"),
          Text("hola soy Elias"),
        ],
      ),
    );
  }
}
