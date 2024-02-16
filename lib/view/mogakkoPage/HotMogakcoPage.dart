// 핫한 모각코
import 'package:flutter/material.dart';
import 'package:home/widget/Catchup/TechnologyStackList.dart';
import 'package:home/widget/Common/SortButton.dart';
import 'package:home/widget/Common/TitleBar2.dart';
import 'package:home/widget/Common/IconFloatingButton.dart';
import 'package:home/widget/Mogakco/MogakcoCard.dart';
import 'package:home/widget/Search/search.dart';

class HotMogackoPage extends StatelessWidget {
  const HotMogackoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconFloatingButton(imagePath: 'assets/icon/icon_30/Write.svg'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 3),
            const Search(),
            const TitleBar2(Title: '핫한 모각코'),
            const TechnologyStackList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SortButton(),
              ],
            ),
            const SizedBox(height: 8),
            MoggakcoCard(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
            ),
            const SizedBox(height: 16),
            MoggakcoCard(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
            ),
            MoggakcoCard(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
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
    );
  }
}
