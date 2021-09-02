import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dark_mode/models/settings.dart';
import 'package:dark_mode/base_material_app.dart';

void main() => runApp(MyAppEntry());

class MyAppEntry extends StatelessWidget {
  const MyAppEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Settings()),
        ],
        child: const DarkModeApp(),
    );
  }
}

/*class DarkModeSwitch extends StatefulWidget {
  const DarkModeSwitch({Key? key}) : super(key: key);
  @override
  _DarkModeSwitchState createState() => _DarkModeSwitchState();
}

class _DarkModeSwitchState extends State<DarkModeSwitch> {
  bool _isDarkMode = false;

  void _changeThemeMode(bool newValue) {
    setState(() {
      _isDarkMode = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: const Text("Dark Mode Switch")),
        body: SwitchListTile(
          value: _isDarkMode,
          onChanged: _changeThemeMode,
          title: const Text("Dark Mode"),
          secondary: Icon(
            _isDarkMode
            ? Icons.lightbulb_outline
            : Icons.lightbulb,
          ),
        ),
      ),
    );
  }
}*/