import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:third_app/providers/setting_provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.read<SettingProvider>().add();
                },
                child: const Text("+")),
            Consumer<SettingProvider>(
                builder: (context, provider, child) =>
                    (Text(provider.number.toString()))),
            ElevatedButton(
                onPressed: () {
                  context.read<SettingProvider>().minus();
                },
                child: const Text("-")),
          ],
        ),
      ),
    );
  }
}
