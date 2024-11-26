import 'package:flutter/material.dart';
import 'package:third_app/widget/coffe_card.dart';
import 'package:third_app/widget/coffee_category_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find the best \nCoffee to your taste'),
        leading: const Icon(Icons.apps),
        actions: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/avatar.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16.0),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CoffeeCategoryButton(text: 'Espresso'),
                  SizedBox(width: 8),
                  CoffeeCategoryButton(text: 'Latte'),
                  SizedBox(width: 8),
                  CoffeeCategoryButton(text: 'Cappuccino'),
                  SizedBox(width: 8),
                  CoffeeCategoryButton(text: 'Cafetiere'),
                ],
              ),
            ),
            const SizedBox(height: 12.0),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CoffeCard(
                      coffeeName: 'Espresso',
                      imagePath: 'assets/images/Rectangle_16.png'),
                  CoffeCard(
                      coffeeName: 'Latte',
                      imagePath: 'assets/images/Rectangle_16.png'),
                  CoffeCard(
                      coffeeName: 'Cappuccino',
                      imagePath: 'assets/images/Rectangle_16.png'),
                  CoffeCard(
                      coffeeName: 'Cafetiere',
                      imagePath: 'assets/images/Rectangle_16.png'),
                ],
              ),
            ),
            const SizedBox(
                height: 50,
                child: Text(
                  "Specical for you",
                  style: TextStyle(fontSize: 35),
                )),
            Container(
              padding: const EdgeInsets.all(8),
              height: 150,
              decoration: const BoxDecoration(
                color: Color(0xffBD9A6F),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    child: Image.asset(
                      'assets/images/Rectangle_16.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Expanded(
                    child: Text(
                      'Specially mixed and brewd within you must try',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
