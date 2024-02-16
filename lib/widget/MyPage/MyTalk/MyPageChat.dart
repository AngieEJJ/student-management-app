// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_svg/svg.dart';

import 'package:home/styles/app_colors.dart';

import 'package:home/widget/HotTalk/ScoreAvatar.dart';
import 'package:home/widget/MyPage/Popup/DeleteIconPopup.dart';

class MyPageChat extends StatelessWidget {
  const MyPageChat({
    Key? key,
    required this.date,
    required this.message,
  }) : super(key: key);

  final String date;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 95,
        width: 400,
        child: Column(
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            date,
                            style: TextStyle(
                                fontSize: 12, color: AppColors.neutral_40),
                          ),
                          SizedBox(height: 10),
                          Text(
                            message,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset('assets/icon/icon_20/....svg'),
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 180),
                child: const ScoreAvatar()),
          ],
        ),
      ),
      Positioned(
        right: 57,
        bottom: 35,
        child: Container(
          width: 55,
          height: 55,
          child: IconButton(
            splashRadius: 0.1,
            onPressed: () {},
            icon: SvgPicture.asset('assets/icon/icon_30/editable.svg'),
          ),
        ),
      ),
      Positioned(
          right: 25,
          bottom: 35,
          child: DeleteIconPopup(
            title: '내 톡을 삭제하시겠습니까?',
            subtitle: '한번 삭제하면 복구가 불가능합니다.',
            buttonname1: '취소하기',
            buttonname2: '등록하기',
          )),
    ]);
  }
}
