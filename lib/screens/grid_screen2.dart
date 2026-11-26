import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/appBar.dart';

class GridScreen2 extends StatelessWidget {
  const GridScreen2({super.key});

  static const List<Map<String, String>> videogames = [
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYFHvbam_qXpc-n2F9xSGuVMnsaUapXar-Zs5IwbUEN2JLALpOXmg_d1Ht&s=10",
      "name":"PePa",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBB27VZkP2PeyWMEQuvEDjmEkLHxEv9MXO7uhEWvOUE_egbr6JmtrTI4c&s=10",
      "name": "perro facha",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpLAUEGNk7OMmj4odq5hFw5eTqvMqAAkPoKJqrIkJ_--FPTeHMpYTX_1w&s=10",
          "name": "Pible",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQonmuNmKPtFegoYhnBopW6HFLfDDHqEg_OTzjKBe-k_zg4bji5Iq9bfBc&s=10",
          "name": "Wizi",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Grid Screen 2'),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: videogames.length,
          itemBuilder: (context, index) {
            return CardVideogames(
              image: videogames[index]['img']!,
              name: videogames[index]['name']!,
            );
          },
        ),
      ),
    );
  }
}
class CardVideogames extends StatelessWidget{
  final String image;
  final String name;
  const CardVideogames ({super.key ,required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(child: Column(children: [
      Expanded(child: Image.network(image)),
      Text(name),
    ],));
  }
}