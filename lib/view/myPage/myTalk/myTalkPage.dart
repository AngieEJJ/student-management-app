import 'package:flutter/material.dart';
import 'package:home/widget/Common/SortButton.dart';
import 'package:home/widget/Common/TitleBar2.dart';
import 'package:home/widget/MyPage/MyTalk/MyPageChat.dart';

class MyTalkPage extends StatelessWidget {
  const MyTalkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleBar2(
          Title: '내가 쓴 톡',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SortButton(),
          ],
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 7,
            itemBuilder: (BuildContext context, index) => Padding(
              padding: const EdgeInsets.only(left: 20),
              child: const Row(
                children: [
                  MyPageChat(
                    date: '2023.11.05',
                    message: '플러터 3기인데 플러터 짱 재밌음',
                  ),
                ],
              ),
            ),
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            },
          ),
        ),
      ],
    );
  }
}
