import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/appBar.dart';

class FormsScreen extends StatelessWidget {
  const FormsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Forms'),
    );
  }
}
