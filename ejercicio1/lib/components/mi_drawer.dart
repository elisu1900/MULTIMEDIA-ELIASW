import 'package:ejercicio1/screens/pantalla1.dart';
import 'package:ejercicio1/screens/pantalla2.dart';
import 'package:ejercicio1/screens/pantalla3.dart';
import 'package:ejercicio1/screens/pantalla4.dart';
import 'package:ejercicio1/screens/pantalla5.dart';
import 'package:ejercicio1/screens/pantalla6.dart';
import 'package:ejercicio1/screens/pantalla7.dart';
import 'package:ejercicio1/screens/pantalla8.dart';
import 'package:ejercicio1/screens/pantalla9.dart';
import 'package:flutter/material.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children : [
          DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 194, 77, 77)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_balance_wallet_rounded,
                  size: 60,
                  color: Colors.white,
                ),
                SizedBox(height: 10),
                Text(
                  "Menú Principal",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
          ),

          ListTile(
            leading:  Icon(Icons.person),
            title:  Text("Datos"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Pantalla1()),
              );
            },
          ),

          ListTile(
            leading:  Icon(Icons.photo),
            title:  Text("Foto"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Pantalla2()),
              );
            },
          ),

          ListTile(
            leading:  Icon(Icons.grid_view),
            title:  Text("Fotos en Columnas"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Pantalla3()),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.view_list),
            title: const Text("Iconos en Filas"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Pantalla4()),
              );
            },
          ),

          ListTile(
            leading:  Icon(Icons.view_column),
            title:  Text("Imágenes en Columnas"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Pantalla5()),
              );
            },
          ),


          ListTile(
            leading:  Icon(Icons.edit_note),
            title:  Text("Texto en filas"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Pantalla6()),
              );
            },
          ),

          ListTile(
            leading:  Icon(Icons.picture_in_picture),
            title:  Text("imagenes repetidas"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Pantalla7()),
              );
            },
          ),
          ListTile(
            leading:  Icon(Icons.image_outlined),
            title:  Text("imagenes en filas"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Pantalla8()),
              );
            },
          ),
          ListTile(
            leading:  Icon(Icons.edit_attributes_outlined),
            title:  Text("challenge gradiente"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Pantalla9()),
              );
            },
          ),
          
        ],
      ),
    );
  }
}


