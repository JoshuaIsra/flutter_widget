import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pop(context);
      },child: Icon(Icons.arrow_back) ),
      appBar: AppBar(
        title: const Text('Buttons'),
        backgroundColor: const Color.fromARGB(255, 57, 61, 85),
        foregroundColor: Colors.white,
      ),
      body:Center(
        child: Column(        
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){}, child: const Text('Click me'),),          
            FilledButton(onPressed: (){}, child: const Text('Boton relleno')),
            SizedBox(height: 10),
            OutlinedButton(style:TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 194, 82, 125)),
            onPressed: (){}, child: const Text('Boton con borde')),
            SizedBox(height: 10),
            IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit)),
            FilledButton.icon(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                icon: const Icon(Icons.ac_unit),
                label: const Text('Boton con icono'),
              ),
            SizedBox(height: 10),
            OutlinedButton.icon(onPressed: null, label: Text('Outline With Icon '),icon:Icon(Icons.dangerous)),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){}, child: Text('Boton elevado')),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){}, child: Icon(Icons.deck_rounded)),
          ],
        ),
      )
      


    );
  }
}
