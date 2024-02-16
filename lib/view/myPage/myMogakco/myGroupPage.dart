import 'package:flutter/material.dart';
import 'package:home/widget/Common/SortButton.dart';
import 'package:home/widget/Common/TitleBar2.dart';
import 'package:home/widget/Mogakco/MogakcoCard.dart';

class MyGroupPage extends StatelessWidget {
  const MyGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleBar2(
          Title: '내가 만든 그룹',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SortButton(),
          ],
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext context, index) => MoggakcoCard(
                    imagePath: 'assets/icon/icon_70/laptop.svg',
                    userClass: '개발자/1기',
                    userName: '신디',
                    userType: '수료생',
                  )),
        ),
      ],
    );
  }
}
