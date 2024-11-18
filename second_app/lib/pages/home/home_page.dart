import 'package:flutter/material.dart';
import 'package:second_app/apps/routers/router_name.dart';
import 'package:second_app/pages/category/category_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, RouterName.categoryPage,
                arguments: {'exampleArgument': 'hello'});
          },
          child: const Text(
            'change page',
          ),
        ),
      ),
    );
  }
}
