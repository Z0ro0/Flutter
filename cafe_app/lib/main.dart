import 'package:flutter/material.dart';
import 'package:cafe_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twosome Clone',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
