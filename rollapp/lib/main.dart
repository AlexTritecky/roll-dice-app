import 'package:flutter/material.dart';
import 'package:rollapp/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List<Color> colors = [
    Color.fromARGB(255, 7, 165, 218),
    Color.fromARGB(255, 7, 241, 136),
    Color.fromARGB(255, 7, 241, 198),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.deepPurpleAccent,
            appBar: AppBar(
              title: const Text('Roll Dice'),
              backgroundColor: const Color.fromARGB(255, 36, 226, 220),
            ),
            body: Center(
              child: GradientContainer(colors),
            )));
  }
}
