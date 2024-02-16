// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

import 'package:home/styles/app_colors.dart';
import 'package:home/widget/HotTalk/HeartIconButton.dart';
import 'package:home/widget/HotTalk/ScoreAvatar.dart';

class BubbleChat extends StatelessWidget {
  const BubbleChat({
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
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '24분 전',
                        style: TextStyle(
                            fontSize: 12, color: AppColors.neutral_40),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '근데 혹시 15일차 강의 푸신 분 있으면 좀 알려주세요. 뭐가 바뀌어야 하죠',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                HeartIconButton(),
              ],
            ),
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
