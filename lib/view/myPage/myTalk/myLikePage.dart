import 'package:flutter/material.dart';
import 'package:home/widget/Common/SortButton.dart';
import 'package:home/widget/Common/TitleBar2.dart';
import 'package:home/widget/HotTalk/BubbleChat.dart';
import 'package:home/widget/HotTalk/HomeAvatar.dart';

class MyLikePage extends StatelessWidget {
  const MyLikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleBar2(
          Title: '좋아요 한 톡',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SortButton(),
          ],
        ),
        ListView.separated(
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (BuildContext context, index) => const Row(
            children: [
              HomeAvatar(
                  imagePath: 'assets/icon/avatar/Property 1=Default.svg',
                  userClass: '개발자/1기'),
              BubbleChat(),
            ],
          ),
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10);
          },
        ),
      ],
    );
  }
}
