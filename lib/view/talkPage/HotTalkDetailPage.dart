import 'package:flutter/material.dart';
import 'package:home/widget/Common/TitleBar2.dart';
import 'package:home/widget/FloatingButton/%20FloatingButtonPopup.dart';

import 'package:home/widget/HotTalk/BubbleChat.dart';
import 'package:home/widget/HotTalk/HomeAvatar.dart';
import 'package:home/widget/Search/search.dart';

class HotTalkDetailPage extends StatelessWidget {
  const HotTalkDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingButtonPopup(),
      body: Column(children: [
        const Search(),
        const TitleBar2(Title: '핫한톡'),
        Expanded(
          flex: 1,
          child: ListView.separated(
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
        )
      ]),
    );
  }
}
