import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('연락처'),
          actions: [Icon(Icons.favorite_border)],
        ),
        body: ListView(
          children: [
            Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.people),
                SizedBox(width: 20,),
                Text('최가을'),
                SizedBox(height: 60,),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.people),
                SizedBox(width: 20,),
                Text('최가을'),
                SizedBox(height: 60,),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.people),
                SizedBox(width: 20,),
                Text('최가을'),
                SizedBox(height: 60,),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.search_rounded),
              Icon(Icons.favorite_border),
              Icon(Icons.people),
            ],
          ),
        ),
      ),
    );
  }
}
