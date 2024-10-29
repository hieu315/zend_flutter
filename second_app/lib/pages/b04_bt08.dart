import 'package:flutter/material.dart';

class B04Bt08 extends StatelessWidget {
  const B04Bt08({super.key});

  final List<Map<String, dynamic>> categories = const [
    {
      "title": "Fruits",
      "icon": "assets/images/ic_Fruit.png",
      "color": Color.fromARGB(200, 40, 176, 206),
      "count": 45
    },
    {
      "title": "Vegetables",
      "icon": "assets/images/ic_vegetables.png",
      "color": Color.fromARGB(220, 46, 101, 207),
      "count": 45
    },
    {
      "title": "Bakery",
      "icon": "assets/images/baguette 1.png",
      "color": Color.fromARGB(220, 28, 189, 92),
      "count": 45
    },
    {
      "title": "Dairy",
      "icon": "assets/images/cheese 1.png",
      "color": Color.fromARGB(220, 232, 82, 118),
      "count": 45
    },
    {
      "title": "Mushroom",
      "icon": "assets/images/ic_mushroom.png",
      "color": Color.fromARGB(220, 239, 150, 4620),
      "count": 45
    },
    {
      "title": "Fish",
      "icon": "assets/images/fish 1.png",
      "color": Color.fromARGB(220, 20, 171, 135),
      "count": 45
    },
    {
      "title": "Pizzas",
      "icon": "assets/images/pizza 1.png",
      "color": Color.fromARGB(220, 174, 113, 86),
      "count": 45
    },
    {
      "title": "Chicken",
      "icon": "assets/images/chicken 1.png",
      "color": Color.fromARGB(220, 161, 49, 173),
      "count": 45
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
        leading: const Icon(Icons.arrow_back),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 25,
            crossAxisSpacing: 20,
            childAspectRatio: 0.9,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];

            return Container(
              decoration: BoxDecoration(
                color: category["color"],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    category["icon"],
                    width: 40,
                    height: 40,
                    color: Colors.white, // Apply a color overlay if needed
                  ),
                  const SizedBox(height: 8),
                  Text(
                    category["title"],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${category["count"]} Items",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
