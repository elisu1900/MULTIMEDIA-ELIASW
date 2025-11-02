import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int veces = 0;

    incrementar() {
      setState(() {
        veces++;
      });
    }

    puesta_a_cero() {
      setState(() {
        veces = 0;
      });
    }

    return MaterialApp(
      title: 'contador Clics',
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('contador Clics')),
          backgroundColor: Colors.green,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text("Has pulsado :", style: TextStyle(fontSize: 25))),
            SizedBox(height: 20),
            Center(child: Text(
              
              veces == 1 ? "$veces vez": "$veces veces",            
            
            style: TextStyle(fontSize: 35))),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("puesta a cero")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementar,
          tooltip: "incrementar",
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
