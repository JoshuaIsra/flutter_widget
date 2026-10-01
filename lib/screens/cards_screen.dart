import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
        backgroundColor: const Color.fromARGB(255, 148, 63, 181),
        foregroundColor: Colors.white,
      ),
      body: const Placeholder(),
    );
  }
}
