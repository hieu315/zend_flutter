import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:third_app/providers/setting_provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final settingProvider = Provider.of<SettingProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              settingProvider.themeMode == ThemeMode.dark
                  ? Icons.nights_stay
                  : Icons.wb_sunny,
              size: 100,
              color: settingProvider.themeMode == ThemeMode.dark
                  ? Colors.yellow
                  : Colors.orange,
            ),
            Text(
                settingProvider.themeMode == ThemeMode.dark
                    ? "Dark Theme"
                    : "Light Theme",
                style: Theme.of(context).textTheme.headlineMedium),
            Switch(
              value: settingProvider.themeMode == ThemeMode.dark,
              onChanged: (value) {
                settingProvider.toggleTheme();
              },
            ),
          ],
        ),
      ),
    );
  }
}
