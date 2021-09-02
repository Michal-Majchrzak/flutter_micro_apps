import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dark_mode/models/settings.dart';
import 'package:dark_mode/screens/settings_simple.dart';

class DarkModeApp extends StatelessWidget {
  const DarkModeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Settings settings = context.watch<Settings>();
    return MaterialApp(
      themeMode: settings.darkMode ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: SettingsScreen(),
    );
  }
}