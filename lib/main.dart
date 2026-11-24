import 'package:flutter/material.dart';

import 'detail_page.dart';
import 'menu_screen.dart';
import 'routes.dart';

void main() => runApp(const PizzaStoreApp());

class PizzaStoreApp extends StatelessWidget {
  const PizzaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Store',
      theme: ThemeData(colorSchemeSeed: Colors.orange, useMaterial3: true),
      initialRoute: AppRoutes.menu,
      routes: {
        AppRoutes.menu: (context) => const MenuScreen(),
        AppRoutes.vegetable: (context) => const DetailPage(
          name: 'Vegetable Pizza',
          image: 'assets/images/VegetablePZ.png',
          description:
          'Fresh capsicum, mushrooms, onions and olives on a crisp base.',
        ),
        AppRoutes.cheese: (context) => const DetailPage(
          name: 'Cheese Pizza',
          image: 'assets/images/cheesePZ.png',
          description:
          'Classic mozzarella melted over rich tomato sauce.',
        ),
        AppRoutes.fries: (context) => const DetailPage(
          name: 'Box of Fries',
          image: 'assets/images/Fries.png',
          description: 'Golden, crispy fries served hot and lightly salted.',
        ),
      },
    );
  }
}