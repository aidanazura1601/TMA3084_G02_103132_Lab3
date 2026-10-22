import 'package:flutter/material.dart';

void main() {
  runApp(const RestaurantMenuApp());
}

class RestaurantMenuApp extends StatelessWidget {
  const RestaurantMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Menu'),
        backgroundColor: Colors.deepOrange,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            MenuCard('VegetablePZ.png', 'Vegetable Pizza'),
            MenuCard('cheesePZ.png', 'Cheese Pizza'),
            MenuCard('Fries.png', 'Box of Fries'),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard(this.file, this.name, {super.key});

  final String file;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.orange,
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset('assets/images/$file', width: 100, height: 100),
            const SizedBox(width: 20),
            Text(
              name,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
