import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nisl nec tincidunt lacinia, nunc nisl aliquam nunc, eget aliquam nisl nunc eget nunc. Sed euismod, nisl nec tincidunt lacinia, nunc nisl aliquam nunc, eget aliquam nisl nunc eget nunc. Sed euismod, nisl nec tincidunt lacinia, nunc nisl aliquam nunc, eget aliquam nisl nunc eget nunc. Sed euismod, nisl nec tincidunt lacinia, nunc nisl aliquam nunc, eget aliquam nisl nunc eget nunc. Sed euismod, nisl nec tincidunt lacinia, nunc nisl aliquam nunc, eget aliquam nisl nunc eget nunc.',
                ),
              ),
            ),
            HeroCard(),
            VillanCard(),
            CardProduct(),
            CardHelado(),
            CardFavorito(),
          ],
        ),
      ),
    );
  }
}

class CardProduct extends StatefulWidget {
  const CardProduct({super.key});

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  int contador = 5;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 5,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNz_tPE4a6Q1MU-iSOG2JMAuoTV6DG5Qk_EHldr4FFgQ&s=10',
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Helado de chocolate',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: () {},
                    child: const Text('Add to Cart'),
                  ),
                ),
                IconButton(
                  onPressed: () => setState(() 
                  => contador++),
                  icon: const Icon(Icons.add),
                ),
                Text(
                  contador.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                IconButton(
                  onPressed: contador > 0
                      ? () => setState(() => contador--)
                      : null,
                  icon: const Icon(Icons.remove),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeroCard extends StatelessWidget {
  const HeroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy89zkt6Ez7PeDSbEj9H6lXLqGbrR-UydjB7HL5RtY1Gs10iD4t4S29KFI&s=10',
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'GOKU CHACALON',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('GOKU FASE GOOD'),
          ),
        ],
      ),
    );
  }
}

class VillanCard extends StatelessWidget {
  const VillanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset('assets/images/vaina.jpg'),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'GOKU ETA VAINA E SERIA',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'EL BILLS SE ENCUENTRA ASUSTADO PORQUE LA VAINA TA SERIA',
            ),
          ),
        ],
      ),
    );
  }
}



class CardHelado extends StatefulWidget {
  const CardHelado({super.key});

  @override
  State<CardHelado> createState() => _CardHeladoState();
}

class _CardHeladoState extends State<CardHelado> {
  String mensaje = 'Elige un método de pago';
  int descuento = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 5,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              '',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Helado de pepa',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Text(mensaje, style: const TextStyle(fontSize: 20)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => setState(() {
                    descuento = 10;
                    mensaje = '10% ';
                  }),
                  icon: const Icon(Icons.credit_card),
                ),
                IconButton(
                  onPressed: () => setState(() {
                    descuento = 15;
                    mensaje = '15% ';
                  }),
                  icon: const Icon(Icons.payments),
                ),
                Expanded(
                  child: FilledButton(
                    onPressed: descuento > 0
                        ? () => setState(() {
                              mensaje = '$descuento%';
                            })
                        : null,
                    child: const Text('Pagar'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

class CardFavorito extends StatelessWidget {
  const CardFavorito({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 5,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            child: Image.network(
              'https://clv.h-cdn.co/assets/15/22/2048x2048/square-1432664914-strawberry-facts1.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Strawberry',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: const Card(
                    margin: EdgeInsets.zero,
                    elevation: 0,
                    color: Colors.orange,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                      child: Text(
                        '\$50',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Fresas frescas y jugosas, perfectas para postres, batidos o para comer solas. Dulces, rojas y llenas de sabor.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    margin: EdgeInsets.zero,
                    elevation: 0,
                    color: Colors.orange.shade100,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                      child: Text('100% Natural y orgánico'),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(right: 8)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    margin: EdgeInsets.zero,
                    elevation: 0,
                    color: Colors.orange.shade100,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                      child: Text('Envío gratis'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: FilledButton(
                    style: FilledButton.styleFrom(backgroundColor: Colors.orange),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
