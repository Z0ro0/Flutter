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
      title: 'layout example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Example'),
      ),
      body: Column(
        children: [
          Image.asset('dosirock.jpg'),
          Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('도시락', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                  Text('맛남의 광장에서 나온 아스파라거스 요리\n'
                      '입에 감기는 맛이지만 쉬우노 요리법에\n'
                      '술안주(안돼용), 밥반찬으로 추천!!\n',
                  style: TextStyle(color: Colors.grey, fontSize: 15),),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
