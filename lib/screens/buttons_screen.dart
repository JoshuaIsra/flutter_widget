import 'package:flutter/material.dart';
import 'package:flutter_widget/theme/app_colors.dart';

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
      ),
      body:Center(
        child: Column(        
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){}, child: const Text('Click me'),),          
            FilledButton(onPressed: (){}, child: const Text('Boton relleno')),
            SizedBox(height: 10),
            OutlinedButton(style:TextButton.styleFrom(backgroundColor: AppColors.rojo, foregroundColor: Colors.white),
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
            SizedBox(height: 10),
            Material(
              color: Colors.transparent,
              child: Ink(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [AppColors.verde, AppColors.rojo],
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  onTap: (){},
                  borderRadius: BorderRadius.circular(12),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    child: Text('Boton degradado', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
      


    );
  }
}
