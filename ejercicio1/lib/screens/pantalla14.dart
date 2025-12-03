import 'package:ejercicio1/components/mi_drawer.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

class Pantalla14 extends StatefulWidget {
  const Pantalla14({super.key});

  @override
  State<Pantalla14> createState() => _Pantalla14State();
}

class _Pantalla14State extends State<Pantalla14> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  
  late int numeroSecreto;
  String mensaje = 'Adivina el número entre 1 y 100';
  Color colorMensaje = Colors.blue;
  int intentos = 0;
  bool acertado = false;
  final Random random = Random();

  @override
  void initState() {
    super.initState();
    generarNumeroSecreto();
  }

  void generarNumeroSecreto() {
    numeroSecreto = random.nextInt(100) + 1;
  }

  void reiniciarJuego() {
    setState(() {
      generarNumeroSecreto();
      mensaje = 'Adivina el número entre 1 y 100';
      colorMensaje = Colors.blue;
      intentos = 0;
      acertado = false;
      _controller.clear();
    });
  }

  String? validarNumero(String? value) {
    if (value == null || value.isEmpty) {
      return 'Ingresa un número';
    }
    
    final numero = int.tryParse(value);
    if (numero == null) {
      return 'Debe ser un número';
    }
    
    if (numero < 1 || numero > 100) {
      return 'Debe estar entre 1 y 100';
    }
    
    return null;
  }

  void verificarNumero() {
    if (_formKey.currentState!.validate()) {
      final numeroIngresado = int.parse(_controller.text);
      
      setState(() {
        intentos++;
        
        if (numeroIngresado == numeroSecreto) {
          mensaje = '¡Correcto! Lo lograste en $intentos intento${intentos > 1 ? 's' : ''}';
          colorMensaje = Colors.green;
          acertado = true;
        } else if (numeroIngresado < numeroSecreto) {
          mensaje = 'El número es MAYOR que $numeroIngresado';
          colorMensaje = Colors.orange;
        } else {
          mensaje = 'El número es MENOR que $numeroIngresado';
          colorMensaje = Colors.red;
        }
      });
      
      _controller.clear();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adivina el Número'),
        backgroundColor: Colors.red,
      ),
      drawer: const MiDrawer(),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                
                Text(
                  mensaje,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: colorMensaje,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                const SizedBox(height: 20),
                
                if (intentos > 0)
                  Text(
                    'Intentos: $intentos',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                
                const SizedBox(height: 40),
                
                if (!acertado) ...[
                  TextFormField(
                    controller: _controller,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: const InputDecoration(
                      labelText: 'Tu número',
                      hintText: 'Escribe un número',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.numbers),
                    ),
                    validator: validarNumero,
                    onFieldSubmitted: (_) => verificarNumero(),
                  ),
                  
                  const SizedBox(height: 30),
                  
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: verificarNumero,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Comprobar',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ] else ...[
                  const SizedBox(height: 30),
                  
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: reiniciarJuego,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Jugar de nuevo',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}