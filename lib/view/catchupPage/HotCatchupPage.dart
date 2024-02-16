// 핫한 캐치업
import 'package:flutter/material.dart';
import 'package:home/widget/Catchup/CatchupCard.dart';
import 'package:home/widget/Catchup/TechnologyStackList.dart';
import 'package:home/widget/Common/SortButton.dart';
import 'package:home/widget/Common/TitleBar2.dart';
import 'package:home/widget/Search/search.dart';

class HotCatchupPage extends StatelessWidget {
  const HotCatchupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 3),
            const Search(),
            const TitleBar2(Title: '핫한 캐치업'),
            const TechnologyStackList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SortButton(),
              ],
            ),
            const SizedBox(height: 8),
            CatchupCard(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
            ),
            const SizedBox(height: 16),
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
    );
  }
}
