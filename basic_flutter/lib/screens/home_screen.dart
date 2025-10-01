import 'package:basic_flutter/components/text.dart';
import 'package:basic_flutter/layouts/row.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: TextExample(),
        ),
      );
  }
}