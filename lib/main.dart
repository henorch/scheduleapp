
import 'package:cre8/all_schedule.dart';
import 'package:cre8/create_schedule.dart';
import 'package:cre8/widgets/Auth/signin.dart';
import 'package:cre8/widgets/Auth/signup.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Light & Dark Theme App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeMode,

      initialRoute: '/',
      routes: {
        '/': (context) => Signup(),
        '/create': (context) => CreateSchedule(onToggle: toggleTheme, isDark: _themeMode == ThemeMode.dark),
        '/signin': (context) => Signin(),
        '/all': (context) => AllSchedule()
     
      },
    );
  }
}


