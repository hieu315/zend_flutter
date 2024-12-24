import 'dart:io';

import 'package:dio/io.dart';
import 'package:flutter/material.dart';
import 'package:news_app/apps/routers/router_name.dart';
import 'package:news_app/pages/articles_page/articles_page.dart';
import 'package:news_app/pages/home_page/home_page.dart';
import 'package:news_app/pages/settings_page/settings_page.dart';
import 'package:news_app/providers/article_provider.dart';
import 'package:news_app/providers/home_provider.dart';
import 'package:news_app/providers/setting_provider.dart';
import 'package:provider/provider.dart';

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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        initialRoute: RouterName.homePage,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case RouterName.homePage:
              return MaterialPageRoute(
                builder: (_) => const HomePage(),
              );
            case RouterName.articlePage:
              final arguments = settings.arguments as Map?;
              return MaterialPageRoute(
                builder: (_) => const ArticlesPage(),
                settings: RouteSettings(arguments: arguments),
              );
            case RouterName.settingPage:
              return MaterialPageRoute(
                builder: (_) => const SettingsPage(),
              );
            default:
              return MaterialPageRoute(
                builder: (_) => const HomePage(),
              );
          }
        },
      ),
    );
  }
}
