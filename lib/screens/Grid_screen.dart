import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/appBar.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Grid'),
    );
  }
}
