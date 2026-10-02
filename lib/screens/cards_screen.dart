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
      body: SingleChildScrollView(
        child: Column(
        children:[
          Card(
            elevation: 5,
            margin:EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(10.0),
        child:Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nisl nec tincidunt lacinia, nunc nisl aliquam nunc, eget aliquam nisl nunc eget nunc. Sed euismod, nisl nec tincidunt lacinia, nunc nisl aliquam nunc, eget aliquam nisl nunc eget nunc. Sed euismod, nisl nec tincidunt lacinia, nunc nisl aliquam nunc, eget aliquam nisl nunc eget nunc. Sed euismod, nisl nec tincidunt lacinia, nunc nisl aliquam nunc, eget aliquam nisl nunc eget nunc. Sed euismod, nisl nec tincidunt lacinia, nunc nisl aliquam nunc, eget aliquam nisl nunc eget nunc. Sed euismod, nisl nec tincidunt lacinia, nunc nisl aliquam nunc, eget aliquam nisl nunc eget_n')
            ),
          ),
          HeroCard(),
          VillanCard(),
        ]
      ),
      ),
    );
  }
}

class HeroCard extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Column(
        children:[
          ClipRRect(
            borderRadius:BorderRadiusGeometry.only(
              topLeft: Radius.circular(3),
              topRight: Radius.circular(10),
            ),
            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy89zkt6Ez7PeDSbEj9H6lXLqGbrR-UydjB7HL5RtY1Gs10iD4t4S29KFI&s=10')),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'GOKU CHACALON ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,                    
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'GOKU FASE GOOD',            
              ),
            ),
          
        ]
      )
    );
  }
  
}

class VillanCard extends StatelessWidget {
  const VillanCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Column(
        children:[
          ClipRRect(
            borderRadius:BorderRadiusGeometry.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset('assets/images/vaina.jpg')),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'GOKU ETA VAINA E SERIA',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'EL BILLS SE ENCUENTA ASUSTADO PORUQUE LA VAINA TA SERIA',
              ),
            ),
        ]
      )
    );
  }
}
