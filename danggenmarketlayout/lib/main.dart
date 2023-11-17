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
          backgroundColor: Colors.white,
          title: Text(
            '금천동 3가',
            style: TextStyle(color: Colors.black87),
          ),
          actions: [
            IconButton(icon: Icon(Icons.expand_more), onPressed: null),
            IconButton(icon: Icon(Icons.search_rounded), onPressed: null),
            IconButton(icon: Icon(Icons.view_headline), onPressed: null),
            IconButton(icon: Icon(Icons.notifications), onPressed: null),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start, // 세로 정렬을 위해 start로 설정
                children: [
                  Image.asset('dog.jpg'), // 이미지의 경로를 올바르게 수정해주세요.
                  SizedBox(width: 50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('강아쥐예용'),
                      Text('성동구 행당동 | 10분 전'),
                      Text('포메라니안 화남'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(icon: Icon(Icons.favorite_border), onPressed: null),
                          Text('4'),
                        ],
                      )
                    ],
                  ),
            ],
          ),
        ),

      ),
    );
  }
}
