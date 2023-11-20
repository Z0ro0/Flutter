import 'package:flutter/material.dart';
import 'package:usim_project/widgets/banner_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> bannerItemImgUrl = [
      "banner/banner01.jpg",
      "banner/banner02.jpg",
      "banner/banner03.jpg",
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home, color: Colors.black,),
        actions: [Icon(Icons.check_box_outline_blank, color: Colors.black,)],
        backgroundColor: Colors.white,
      ),
      body: Container(
        child:
          Column(
            children: [
              BannerWidget(bannerItemImgUrl: bannerItemImgUrl)
            ],
          )
      ),
    );
  }
}


