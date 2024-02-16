import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Common/CommentBox.dart';
import 'package:home/widget/Common/TitleBar2.dart';
import 'package:home/widget/HotTalk/BigBubbleChat.dart';
import 'package:home/widget/HotTalk/HomeAvatar.dart';
import 'package:home/widget/MyPage/MyTalk/EditableComment.dart';
import 'package:home/widget/MyPage/MyTalk/OtherComment.dart';

class myTalkDetailPage extends StatelessWidget {
  const myTalkDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const TitleBar2(Title: '핫한톡'),
        const Row(
          children: [
            HomeAvatar(
                imagePath: 'assets/icon/avatar/Property 1=Default.svg',
                userClass: '개발자/1기'),
            BigBubbleChat(),
          ],
        ),
        const SizedBox(height: 30),
        Container(
          height: MediaQuery.of(context).size.height * 0.50,
          color: Colors.white,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(children: [
                SvgPicture.asset('assets/icon/icon_70/speaker.svg', height: 20),
                const SizedBox(width: 10),
                const Text(
                  '이어달린 톡',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            EditableComment(),
            otherComment(),
          ]),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            child: const Column(
              children: [
                Divider(
                  thickness: 4,
                  color: AppColors.neutral_5,
                ),
                CommentBox(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
