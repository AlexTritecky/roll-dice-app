import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
          appBar: AppBar(
            title: const Text('Roll Dice'),
            backgroundColor: const Color.fromARGB(255, 36, 226, 220),
          ),
          body: const GradientContainer()),
    );
  }
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 7, 165, 218),
            Color.fromARGB(255, 7, 241, 136),
            Color.fromARGB(255, 7, 241, 198),
          ],
        ),
      ),
      child: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
