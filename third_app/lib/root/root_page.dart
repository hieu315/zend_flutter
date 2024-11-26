import 'package:flutter/material.dart';
import 'package:third_app/pages/cart/cart_page.dart';
import 'package:third_app/pages/home/home_page.dart';
import 'package:third_app/pages/login/login_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Widget> listPage = [const HomePage(), const CartPage()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "Cart"),
        ],
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
      ),
      body: listPage[index],
    );
  }
}
