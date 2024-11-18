import 'package:flutter/material.dart';
import 'package:second_app/apps/routers/router_name.dart';
import 'package:second_app/pages/category/category_page.dart';
import 'package:second_app/pages/home/home_page.dart';
import 'package:second_app/pages/login/login_page.dart';
import 'package:second_app/pages/logout/logout_page.dart';
import 'package:second_app/pages/root/root_page.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      routes: {
        RouterName.loginPage: (_) => const LoginPage(),
        RouterName.homePage: (_) => const HomePage(),
        RouterName.categoryPage: (_) => const CategoryPage(),
        RouterName.logoutPage: (_) => const LogoutPage(),
        RouterName.root: (_) => const RootPage(),
      },
    );
  }
}
