import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/appBar.dart';

class ColumnRowsScreen extends StatelessWidget {
  const ColumnRowsScreen({super.key});

  // Un apartado: icono arriba y título abajo
  Widget item(String title, IconData icon) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          Icon(icon, size: 40),
          Text(title),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Columns & Rows'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              item('Hamburguesa', Icons.lunch_dining_outlined),
              item('Estrella', Icons.star_border),
              item('Corazón', Icons.favorite_border),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              item('Cuadrado', Icons.square_outlined),
              item('Carrito', Icons.shopping_cart_outlined),
              item('Basurero', Icons.delete_outline),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              item('Bicicleta', Icons.pedal_bike_outlined),
              item('Hoja', Icons.eco_outlined),
              item('Círculo', Icons.circle_outlined),
            ],
          ),
        ],
      ),
    );
  }
}
