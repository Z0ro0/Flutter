import 'package:cafe_app/widgets/today_menu_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cafe_app/widgets/banner_widget.dart';
import 'package:cafe_app/widgets/today_menu_widget.dart';
import 'package:cafe_app/screens/menu/coffee_menu_screen.dart';

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

   List<String> bannerItemImgUrl = [
     "assets/images/banner01.jpg",
     "assets/images/banner02.jpg",
   ];

   //2. 탭바 컨트롤러 생성
   return DefaultTabController(
       length: menuItems.length,
       child: Scaffold(
         appBar: AppBar(
           title: const Text("메뉴", style: TextStyle(color: Colors.black),
           ),
           centerTitle: true,
           backgroundColor: Colors.white,
           leading: Icon(
             Icons.home,
             color: Colors.grey,
           ),
           //3, 탭바 생성(탭바 아래 각각의 탭 생성)
           bottom: TabBar(
             tabs: List.generate(//menuitems 길이만큼 탭바 메뉴 생성
                 menuItems.length,
                     (index) => Tab(
                       text: menuItems[index],
                     ),
             ),
             unselectedLabelColor: Colors.black38,//선택되지 않은 탭 진한 회색
             labelColor: Colors.black,//기본 탭 색은 검정색
             indicatorColor: Colors.black,//탭 밑의 선 색 검정색
             indicatorSize: TabBarIndicatorSize.label,//탭 밑의 선 크기는 라벨 크기
             isScrollable: true,//탭바 스크롤 가능하도록
           ),
         ),
         //4.탭바 뷰 생성
         body: TabBarView(
           children: [
             ListView(
               children: [
                 BannerWidget(bannerItemImgUrl: bannerItemImgUrl),
                 TodayMenuWidget(),
               ],
             ),
             CoffeeMenuScreen(),
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
