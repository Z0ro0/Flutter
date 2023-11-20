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
    //레시피 소개 부분 재사용하기 위해서 재사용 메소드 만들기
    Padding titleSection = Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬로 변경
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('도시락', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          Text(
            '맛남의 광장에서 나온 아스파라거스 요리\n'
                '입에 감기는 맛이지만 쉬운 요리법에\n'
                '술안주(안돼용), 밥반찬으로 추천!!\n',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ],
      ),
    );



    Row iconSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildiconLabelRow(Icons.people, '4인분', Colors.grey),
        buildiconLabelRow(Icons.alarm, '15분', Colors.grey),
        buildiconLabelRow(Icons.star, '아무나', Colors.grey),
      ],
    );




    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Example'),
      ),
      body: Column(
        children: [
          Image.asset('assets/dosirock.jpg'),
          titleSection,//재사용 메서드 호출
          iconSection,//이거 넣으면 또 왜... 가운데 정렬...
        ],
      ),
    );
  }

  Row buildiconLabelRow(IconData icon, String label, Color color) {
    return Row(
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(left: 4),
            child: Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: color),),
          )
        ],
      );
  }
}
