import 'package:flutter/material.dart';

class MenuDetailScreen extends StatefulWidget {
  const MenuDetailScreen({super.key, required this.item});

  @override
  _MenuDetailScreenState createState() => _MenuDetailScreenState();
}

class _MenuDetailScreenState extends State<MenuDetailScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("메뉴 상세 화면"),
      ),
    );
  }
}
