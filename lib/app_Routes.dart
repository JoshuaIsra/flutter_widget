import 'package:flutter/material.dart';
import 'package:flutter_widget/models/menu-option.dart';
import 'package:flutter_widget/screens/buttons_screen.dart';
import 'package:flutter_widget/screens/cards_screen.dart';
import 'package:flutter_widget/screens/column_rows_screen.dart';

class Routes {
  static const initialRoute = '/';

  static final menu = <MenuOption>[
    MenuOption(title: 'Buttons', route: '/buttons', screen: const ButtonsScreen(), icon: Icons.baby_changing_station_sharp),
    MenuOption(title: 'Cards', route: '/cards', screen: const CardsScreen(), icon: Icons.credit_card),
    MenuOption(title: 'Columns & Rows', route: '/column_rows', screen: const ColumnRowsScreen(), icon: Icons.view_column),
  ];

}
