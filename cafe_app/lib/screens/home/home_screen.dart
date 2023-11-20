import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //1. 메뉴 아이템 리스트 생성
   List<String> menuItems = [
     "New",
     "커피&음료",
     "아이스크림&빙수",
     "케이크",
   ];

   //2. 탭바 컨트롤러 생성
   return DefaultTabController(
       length: menuItems.length,
       child: Scaffold(
         appBar: AppBar(
           title: Text("메뉴"),
           //3, 탭바 생성(탭바 아래 각각의 탭 생성)
           bottom: TabBar(
             tabs: List.generate(
                 menuItems.length,
                     (index) => Tab(
                       text: menuItems[index],
                     ),
             ),
           ),
         ),
         //4.탭바 뷰 생성
         body: TabBarView(
           children: [
             Center(
               child: Text("New 화면입니다"),
             ),
             Center(
               child: Text("커피&음료 화면입니다"),
             ),
             Center(
               child: Text("빙수&아이스크림 화면입니다"),
             ),
             Center(
               child: Text("케이크 화면입니다"),
             ),
           ],
         ),
       ),
   );
  }
}
