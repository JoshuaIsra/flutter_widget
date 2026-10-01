import 'package:flutter/material.dart';
import 'package:flutter_widget/app_Routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menu = Routes.menu;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HOMME'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(menu[index].title),
            leading: Icon(menu[index].icon),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.pushNamed(context, menu[index].route),
          );
        },
      ),
    );
  }
}
