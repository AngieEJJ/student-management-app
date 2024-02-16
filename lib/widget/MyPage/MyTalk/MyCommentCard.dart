// 내가 쓴 이어달린 톡에 하얀 배경까지 카드로들어가는 위젯
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';

import 'package:home/widget/Common/bigHorizontalUserData.dart';

class MyCommentCard extends StatelessWidget {
  MyCommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        height: 220,
        child: Column(children: [
          Row(children: [
            BigUserData(
                imagePath: 'assets/icon/avatar/Property 1=Default.svg',
                userClass: '개발자/1기',
                userName: '우디',
                userType: '수료생'),
            Text('님의 톡에 댓글을 남겼습니다.'),
            SizedBox(width: 45),
            GestureDetector(
              onTap: () {
                //myTalkDetailPage로 이동
              },
              child: SvgPicture.asset('assets/icon/icon_20/Right.svg'),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: SizedBox(
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        alignment: Alignment.center,
                        height: 80,
                        width: MediaQuery.of(context).size.width * 0.95,
                        decoration: BoxDecoration(
                            color: AppColors.neutral_5,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                            '저에게 말씀해주세요! 저 그 강의 다 들었습니다. 뭐든 말씀해주시면 답변 드리겠습니다'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                '2023.04.25',
                style: TextStyle(fontSize: 13, color: AppColors.neutral_40),
              ),
              const SizedBox(width: 13),
              SvgPicture.asset('assets/icon/icon_20/Property 1=Like.svg',
                  height: 18),
              const Text(
                '3',
                style: TextStyle(fontSize: 14, color: AppColors.primary_80),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              )
            ],
          )
        ]));
  }
}
