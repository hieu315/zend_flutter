import 'package:flutter/material.dart';
import 'package:second_app/apps/routers/router_name.dart';
import 'package:second_app/pages/home/home_page.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, RouterName.logoutPage,
                arguments: {'exampleArgument': 'hello'});
          },
          child: const Text(
            'Category',
          ),
        ),
      ),
    );
  }
}
