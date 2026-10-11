import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
        width: 240,
        padding: const EdgeInsets.all(35),
        margin: const EdgeInsets.all(35),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 5, color: const Color.fromARGB(255, 2, 34, 59)),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: const RadialGradient(
            colors: [Color.fromARGB(255, 221, 140, 236), Color.fromARGB(255, 99, 11, 114)],
          ),
        ),
        child: const Text(
          "Hello Container",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}