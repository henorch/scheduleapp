
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/scheduleprovider.dart';
import 'utils/theme.dart'; // Adjust if your path is different

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ScheduleProvider(),
      child:  MyApp(),
    ),
  );
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void toggleTheme(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Light & Dark Theme App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeMode,
      home: HomePage(onToggle: toggleTheme, isDark: _themeMode == ThemeMode.dark),
    );
  }
}



class HomePage extends StatelessWidget {
  final Function(bool) onToggle;
  final bool isDark;

  const HomePage({super.key, required this.onToggle, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Theme Switch'),
        actions: [
          Switch(
            value: isDark,
            onChanged: onToggle,
            activeColor: Colors.white,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is ${isDark ? "Dark" : "Light"} Theme',
                style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}
