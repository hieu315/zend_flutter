import 'dart:io';

import 'package:dio/io.dart';
import 'package:flutter/material.dart';
import 'package:news_app/pages/articles_page/articles_page.dart';
import 'package:news_app/pages/home_page/home_page.dart';
import 'package:news_app/providers/article_provider.dart';
import 'package:news_app/providers/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:news_app/pages/settings_page/settings_page.dart';
import 'package:news_app/providers/setting_provider.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main(List<String> args) {
  HttpOverrides.global = MyHttpOverrides();

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SettingProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ArticlesProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
