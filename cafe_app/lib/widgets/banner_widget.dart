import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.bannerItemImgUrl,
  });

  final List<String> bannerItemImgUrl;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: bannerItemImgUrl.length,//bannerItemImgUrl의 길이만큼 생성
        options: CarouselOptions(
            viewportFraction: 1.0//화면에 이미지 하나만 꽉 차게 보이도록
        ),
        itemBuilder: (Context, itemIndex, realIndex){
          return Stack(
            children: [
              Image.asset(
                "${bannerItemImgUrl[itemIndex]}",//이미지 경로
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,//이미지 가로 길이를 앱 사이즈로 설정 *웹으로 보면 이미지가 너무 커져서 오류남 어케 해결??/
              ),
              Align(//순서 표시 위젯을 오른쪽 상단에 배치
                alignment: Alignment.topRight,
                child: Container(
                  color: Colors.black38,//배경을 회색으로
                  padding: const EdgeInsets.all(4.0),//안쪽 여백을 줌
                  margin: EdgeInsets.all(16.0),//바깥쪽 여백을 줘서 이미지 안에 위치
                  child: Text(
                    (itemIndex+1).toString()+" / "+bannerItemImgUrl.length.toString(),//현재 이미지 인덱스+1/배너아이템이미지길이
                    style: TextStyle(color: Colors.white),//글자는 흰색
                  ),
                ),
              )
            ],
          );
        });
  }
}
