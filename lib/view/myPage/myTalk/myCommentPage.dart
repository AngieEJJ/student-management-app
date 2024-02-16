import 'package:flutter/material.dart';
import 'package:home/widget/Common/SortButton.dart';
import 'package:home/widget/Common/TitleBar2.dart';

import 'package:home/widget/MyPage/MyTalk/MyCommentCard.dart';

class MyCommentPage extends StatelessWidget {
  const MyCommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleBar2(
          Title: '내가 쓴 이어달린 톡',
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
            itemBuilder: (BuildContext context, index) => MyCommentCard(),
          ),
        ),
      ],
    );
  }
}
