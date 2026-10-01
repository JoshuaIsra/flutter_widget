import 'package:flutter/material.dart';

class ColumnRowsScreen extends StatelessWidget {
  const ColumnRowsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Columns & Rows'),
        backgroundColor: const Color.fromARGB(255, 181, 63, 63),
        foregroundColor: Colors.white,
      ),
      body: const Placeholder(),
    );
  }
}
