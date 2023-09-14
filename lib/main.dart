import 'package:flutter/material.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/screens/setting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),

      },
    );
  }
}

