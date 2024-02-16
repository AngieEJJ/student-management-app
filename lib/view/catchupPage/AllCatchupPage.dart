// 전체 캐치업
import 'package:flutter/material.dart';
import 'package:home/widget/Catchup/CatchupCard.dart';
import 'package:home/widget/Search/search.dart';
import 'package:home/widget/Common/TitleBar.dart';
import 'package:home/widget/BottomNavBar/BottomNavBar.dart';

class AllCatchupPage extends StatelessWidget {
  const AllCatchupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 3),
            Search(),
            TitleBar(
              imagePath: 'assets/icon/icon_70/dart.svg',
              Title: '핫한 캐치업',
              url: '/catchup/hot',
            ),
            CatchupCard(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
            ),
            SizedBox(height: 16),
            TitleBar(
              imagePath: 'assets/icon/icon_70/dart.svg',
              Title: '캐치업!',
              url:'/catchup/catchup'
            ),
            CatchupCard(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
            ),
            CatchupCard(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
            ),
            CatchupCard(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          MyBottomNavigationBar(), // error. the constructor being called isn't a const constructor.
    );
  }
}
