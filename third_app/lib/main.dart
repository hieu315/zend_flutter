import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:third_app/apps/routers/router_name.dart';
import 'package:third_app/pages/cart/cart_page.dart';
import 'package:third_app/pages/detail/detail_page.dart';
import 'package:third_app/pages/home/home_page.dart';
import 'package:third_app/pages/login/login_page.dart';
import 'package:third_app/pages/setting/setting_page.dart';
import 'package:third_app/providers/setting_provider.dart';
import 'package:third_app/root/root_page.dart';

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
    return ChangeNotifierProvider(
      create: (_) => SettingProvider(),
      child: MaterialApp(
        home: const SettingPage(),
        routes: {
          RouterName.root: (_) => const RootPage(),
          RouterName.loginPage: (_) => const LoginPage(),
          RouterName.homePage: (_) => const HomePage(),
          RouterName.cartPage: (_) => const CartPage(),
          RouterName.detailPage: (_) => const DetailPage(),
          RouterName.settingPage: (_) => const SettingPage()
        },
      ),
    );
  }
}
