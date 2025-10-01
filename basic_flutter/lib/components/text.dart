import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
    const TextExample({super.key});

    @override
    Widget build(context) {
        return const Column(
            children: [
                Spacer(),
                Text("Texto Basico"),
                Text("Texto Basico", style: TextStyle(fontSize: 24)),
                Text("Texto Basico",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text("texto curvado", style: TextStyle(fontStyle: FontStyle.italic)),
                Text("texto Colores", 
                style: TextStyle(
                    color: Colors.red, 
                    fontSize: 30, 
                    backgroundColor:  Colors.amber)),
                    Text("Decorator",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough, 
                        fontSize: 30, 
                        color: Colors.black, 
                        decorationColor: Colors.red),),
                        Text("Espaciado entre letras",
                        style: TextStyle(
                            letterSpacing: 5,
                            fontSize: 20
                        ),),
                        Text("Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo",
                        style: TextStyle(
                            fontSize: 30,
                            
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        ),
                Spacer(),
            ],
        );
    }
}
