import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('앱임'),
            ),
            body: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity, height: 80, color: Colors.blue,
              ),
            ),
        )
    );
  }
}
