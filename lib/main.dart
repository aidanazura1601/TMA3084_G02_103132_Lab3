import 'package:flutter/material.dart';

void main() {
  runApp(const BloomBakeryApp());
}

class BloomBakeryApp extends StatelessWidget {
  const BloomBakeryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloom Cake House',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      ),
      home: const MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE91E63),
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: const Icon(Icons.local_florist),
        title: const Text(
          'Bloom Cake House',
          style: TextStyle(fontFamily: 'Pacifico', fontSize: 24),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.favorite),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFF48FB1), Color(0xFFCE93D8)],
                  ),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x33E91E63),
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.local_florist, color: Colors.white),
                        SizedBox(width: 8),
                        Icon(Icons.cake, color: Colors.white, size: 48),
                        SizedBox(width: 8),
                        Icon(Icons.local_florist, color: Colors.white),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Baked with Love',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Fresh floral cakes every day',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const MenuCard(
                'strawberry.jpg',
                'Strawberry Shortcake',
                'RM 12.90',
              ),
              const MenuCard('redvelvet.jpg', 'Red Velvet Rose', 'RM 14.50'),
              const MenuCard('cupcake.jpg', 'Lavender Cupcake', 'RM 6.90'),
              const MenuCard(
                'cheesecake.jpg',
                'Blueberry Cheesecake',
                'RM 13.90',
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard(this.file, this.name, this.price, {super.key});

  final String file;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Color(0xFFF8BBD0), width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/$file',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFAD1457),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.local_florist,
                        size: 16,
                        color: Color(0xFFBA68C8),
                      ),
                      const SizedBox(width: 4),
                      Text(price, style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.add_shopping_cart,
              color: Color(0xFFE91E63),
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}
