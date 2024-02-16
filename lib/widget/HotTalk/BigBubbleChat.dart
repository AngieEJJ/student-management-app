// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

import 'package:home/styles/app_colors.dart';
import 'package:home/widget/HotTalk/HeartIconButton.dart';
import 'package:home/widget/HotTalk/ScoreAvatar.dart';

class BigBubbleChat extends StatelessWidget {
  const BigBubbleChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ChatBubble(
          clipper: ChatBubbleClipper2(
            type: BubbleType.receiverBubble,
            radius: 6,
          ),
          backGroundColor: Colors.white,
          elevation: 0,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.65,
            ),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '24분전',
                      style:
                          TextStyle(fontSize: 12, color: AppColors.neutral_40),
                    ),
                    HeartIconButton(),
                  ],
                ),
                Text(
                  '근데 혹시 15일차 강의 푸신 분 있으면 좀 알려주세요. 뭐가 바뀌어야 하죠? 여기는 글자 수 제한을 일단 안 뒀어요. 둬야 할까요?',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),

            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     SizedBox(
            //       width: 230,
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             '24분 전',
            //             style: TextStyle(
            //                 fontSize: 12, color: AppColors.neutral_40),
            //           ),
            //           SizedBox(height: 10),
            //           Text(
            //             '근데 혹시 15일차 강의 푸신 분 있으면 좀 알려주세요. 뭐가 바뀌어야 하죠? 여기는 글자 수 제한을 일단 안 뒀어요. 둬야 할까요?',
            //             style: TextStyle(fontSize: 14),
            //           ),
            //         ],
            //       ),
            //     ),
            //     HeartIconButton(),
            //   ],
            // ),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        const ScoreAvatar(),
      ],
    );
  }
}
