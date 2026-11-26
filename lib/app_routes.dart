import 'package:flutter/material.dart';
import 'package:flutter_widget/models/menu_option.dart';
import 'package:flutter_widget/screens/buttons_screen.dart';
import 'package:flutter_widget/screens/cards_screen.dart';
import 'package:flutter_widget/screens/column_rows_screen.dart';
import 'package:flutter_widget/screens/dialogs_screen.dart';
import 'package:flutter_widget/screens/Forms_screen.dart';
import 'package:flutter_widget/screens/Grid_screen.dart';
import 'package:flutter_widget/screens/grid_screen2.dart';

class Routes {
  static const initialRoute = '/';

  static final menu = <MenuOption>[
    MenuOption(title: 'Buttons', route: '/buttons', screen: const ButtonsScreen(), icon: Icons.baby_changing_station_sharp),
    MenuOption(title: 'Cards', route: '/cards', screen: const CardsScreen(), icon: Icons.credit_card),
    MenuOption(title: 'Columns & Rows', route: '/column_rows', screen: const ColumnRowsScreen(), icon: Icons.view_column),
    MenuOption(title: 'Forms', route: '/forms', screen: const FormsScreen(), icon: Icons.edit_note),
    MenuOption(title: 'Grid', route: '/grid', screen: const GridScreen(), icon: Icons.grid_view),
    MenuOption(title: 'Grid 2', route: '/grid2', screen: const GridScreen2(), icon: Icons.videogame_asset),
    MenuOption(title: 'Dialogs', route: '/dialogs', screen: const DialogsScreen(), icon: Icons.chat_bubble_outline),
  ];

}
