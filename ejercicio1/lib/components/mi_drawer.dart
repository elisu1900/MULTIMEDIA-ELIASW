import 'package:ejercicio1/routes/app_routes.dart';

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
                Navigator.pushNamed(
                  context,
                  AppRoutes.pantalla1,
                );
              },
            ),

          ListTile(
            leading:  Icon(Icons.photo),
            title:  Text("Foto"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla2,
              );
            },
          ),

          ListTile(
            leading:  Icon(Icons.grid_view),
            title:  Text("Fotos en Columnas"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla3,
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.view_list),
            title: const Text("Iconos en Filas"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla4,
              );
            },
          ),

          ListTile(
            leading:  Icon(Icons.view_column),
            title:  Text("Imágenes en Columnas"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla5,
              );
            },
          ),


          ListTile(
            leading:  Icon(Icons.edit_note),
            title:  Text("Texto en filas"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla6,
              );
            },
          ),

          ListTile(
            leading:  Icon(Icons.picture_in_picture),
            title:  Text("imagenes repetidas"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla7,
              );
            },
          ),
          ListTile(
            leading:  Icon(Icons.image_outlined),
            title:  Text("imagenes en filas"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla8,
              );
            },
          ),
          ListTile(
            leading:  Icon(Icons.edit_attributes_outlined),
            title:  Text("challenge gradiente"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla9,
              );
            },
          ),
          ListTile(
            leading:  Icon(Icons.radio_button_checked),
            title:  Text("Boton mas menos"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla10,
              );
            },
          ),
          ListTile(
            leading:  Icon(Icons.camera_alt),
            title:  Text("Intagram"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla11,
              );
            },
          ),
          ListTile(
            leading:  Icon(Icons.casino),
            title:  Text("Juego colores"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla12,
              );
            },
          ),
          
          ListTile(
            leading:  Icon(Icons.videogame_asset),
            title:  Text("Juego de Imagenes"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla13,
              );
            },
          ),
          ListTile(
            leading:  Icon(Icons.videogame_asset_off),
            title:  Text("Juego del numero"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla14,
              );
            },
          ),
          ListTile(
            leading:  Icon(Icons.telegram),
            title:  Text("Formularios"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppRoutes.pantalla15,
              );
            },
          ),
        ],
      ),
    );
  }
}


