import 'package:flutter/material.dart';

import 'routes.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pizza Store Menu')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          MenuCard(title: 'Vegetable Pizza', routeName: AppRoutes.vegetable),
          MenuCard(title: 'Cheese Pizza', routeName: AppRoutes.cheese),
          MenuCard(title: 'Box of Fries', routeName: AppRoutes.fries),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String title;
  final String routeName;

  const MenuCard({super.key, required this.title, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, routeName),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}