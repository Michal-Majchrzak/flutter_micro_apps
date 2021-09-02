import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dark_mode/models/settings.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Settings settings = context.watch<Settings>();
    return Scaffold(
      appBar: AppBar(title: const Text("Dark mode switch")),
      body: SwitchListTile(
        secondary: Icon(settings.darkMode
        ? Icons.lightbulb_outline
            : Icons.lightbulb),
        title: const Text("Set dark mode :"),
        value: settings.darkMode,
        onChanged: (bool newValue) => settings.setDarkMode(newValue),
      ),
    );
  }
}