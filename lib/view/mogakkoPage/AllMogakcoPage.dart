// 모각코 전체
import 'package:flutter/material.dart';
import 'package:home/widget/Common/IconFloatingButton.dart';
import 'package:home/widget/Mogakco/MogakcoCard.dart';
import 'package:home/widget/Search/search.dart';
import 'package:home/widget/Common/TitleBar.dart';
import 'package:home/widget/BottomNavBar/BottomNavBar.dart';

class AllMogakcoPage extends StatelessWidget {
  const AllMogakcoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconFloatingButton(imagePath: 'assets/icon/icon_30/Write.svg'),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 3),
            Search(),
            TitleBar(
              imagePath: 'assets/icon/icon_70/letter.svg',
              Title: '핫한 모각코',
            ),
            MoggakcoCard(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
            ),
            SizedBox(height: 16),
            TitleBar(
              imagePath: 'assets/icon/icon_70/letter.svg',
              Title: '모든 모각코',
            ),
            MoggakcoCard(
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
