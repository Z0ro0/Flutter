import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_flutter/theme.dart';

void main(){
  runApp(const MyApp());//처음 시작 화면을 MyApp 화면으로 시작
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: theme(context),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.amberAccent,
          ),),
          actions: [
            Icon(Icons.shopping_cart,
            color: Colors.amberAccent),
            SizedBox(width: 10),
            Icon(Icons.search_rounded,
            color: Colors.amberAccent),
            SizedBox(width: 10),
            Icon(Icons.settings,
                color: Colors.amberAccent),
            SizedBox(width: 30),
          ],
        ),
        body: Center(
          child: Text('Hello World',
          style: TextStyle(
              fontSize: 48,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            color: Colors.purple,
          ),),
        ),
      ),
    );
  }

}