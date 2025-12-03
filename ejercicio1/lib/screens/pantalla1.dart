import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/mi_drawer.dart';
import '../components/theme.dart';

class Pantalla1 extends StatefulWidget {
  const Pantalla1({super.key});

  @override
  State<Pantalla1> createState() => _Pantalla1State();
}

class _Pantalla1State extends State<Pantalla1> {
  final ThemeNotifier _themeNotifier = ThemeNotifier();

  @override
  void dispose() {
    _themeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: _themeNotifier,
      builder: (context, themeMode, child) {
        return Theme(
          data: themeMode == ThemeMode.light
              ? AppThemes.lightTheme
              : AppThemes.darkTheme,
          child: Builder(
            builder: (themedContext) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Datos Personales'),
                  actions: [
                    IconButton(
                      icon: Icon(
                        _themeNotifier.isDarkMode
                            ? Icons.light_mode
                            : Icons.dark_mode,
                      ),
                      onPressed: () {
                        _themeNotifier.toggleTheme();
                      },
                      tooltip: _themeNotifier.isDarkMode
                          ? 'Modo Claro'
                          : 'Modo Oscuro',
                    ),
                  ],
                ),

                drawer: const MiDrawer(),

                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ELIAS WASSIT CALZADO",
                          style: Theme.of(themedContext).textTheme.displayLarge,
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: 30),

                        TextButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(
                              'https://github.com/elisu1900/MULTIMEDIA',
                            ); // URL simple para probar
                            await launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: const Text(
                            
                            "https://github.com/elisu1900/MULTIMEDIA",
                            style: TextStyle(fontSize: 18, color: Colors.blue),
                                textAlign: TextAlign.center,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
