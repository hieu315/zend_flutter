import 'package:flutter/material.dart';
import 'package:second_app/pages/category/category_page.dart';
import 'package:second_app/pages/logout/logout_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<StatelessWidget> listPage = [const CategoryPage(), const LogoutPage()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Category"),
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
