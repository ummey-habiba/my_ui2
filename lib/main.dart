import 'package:flutter/material.dart';
import 'package:my_ui2/HomePage.dart';
import 'package:my_ui2/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {

        HomeScreen.routeName:(context) => const HomeScreen(),
        SecondScreen.routeName:(context) => const SecondScreen(),
      },
    );
  }
}
