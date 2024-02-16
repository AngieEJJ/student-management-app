import 'package:flutter/material.dart';
import 'package:home/widget/BottomNavBar/BottomNavBar.dart';
import 'package:home/widget/Common/TitleBar.dart';

import 'package:home/widget/FloatingButton/%20FloatingButtonPopup.dart';
import 'package:home/widget/HotTalk/BubbleChat.dart';
import 'package:home/widget/HotTalk/HomeAvatar.dart';
import 'package:home/widget/Search/search.dart';

class TalkPage extends StatelessWidget {
  const TalkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingButtonPopup(),
      bottomNavigationBar: MyBottomNavigationBar(),
      body: Column(
        children: [
          const Search(),
          Expanded(
            child: ListView(
              children: [
                const TitleBar(
                    imagePath: 'assets/icon/icon_70/fire.svg', Title: '핫한톡',url: '/talk/hot'),
                const Row(children: [
                  HomeAvatar(
                      imagePath: 'assets/icon/avatar/Property 1=Default.svg',
                      userClass: '개발자/1기'),
                  BubbleChat(),
                ]),
                const SizedBox(height: 25),
                const TitleBar(
                    imagePath: 'assets/icon/icon_70/fire.svg', Title: '톡톡톡',url: '/talk/talk'),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, index) => const Row(
                    children: [
                      HomeAvatar(
                          imagePath:
                              'assets/icon/avatar/Property 1=Default.svg',
                          userClass: '개발자/1기'),
                      BubbleChat(),
                    ],
                  ),
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
