import 'package:cafe_app/widgets/banner_widget.dart';
import 'package:flutter/material.dart';

class TodayMenuWidget extends StatelessWidget {
  const TodayMenuWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    List<String> todayMenuImgUrl = [
      "assets/images/cake01.jpg",
      "assets/images/cake02.jpg",
      "assets/images/dessert01.jpg",
      "assets/images/dessert02.jpg",
      "assets/images/cake03.jpg",
    ];
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "투썸 오늘 인기 메뉴",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          GridView.builder(
            shrinkWrap: true,//그리드뷰 크기를 하위 컨텐츠에 맞게 설정
            itemCount: todayMenuImgUrl.length,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(todayMenuImgUrl[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
