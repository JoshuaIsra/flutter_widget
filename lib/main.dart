import 'package:flutter/material.dart';
import 'package:flutter_widget/app_routes.dart';
import 'package:flutter_widget/screens/buttons_screen.dart';
import 'package:flutter_widget/screens/cards_screen.dart';
import 'package:flutter_widget/screens/column_rows_screen.dart';
import 'package:flutter_widget/screens/home_screen.dart';
import 'package:flutter_widget/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: Routes.initialRoute,
      routes: {
        '/':(context) => HomeScreen(),
        '/buttons':(context) => ButtonsScreen(),
        '/cards':(context) => CardsScreen(),
        '/column_rows':(context) => ColumnRowsScreen(),
      }
    );
  }
}
