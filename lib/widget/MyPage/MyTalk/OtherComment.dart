// 톡 상세보기 페이지에 화이트 배경에 반복으로 들어가는 위젯

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Common/bigHorizontalUserData.dart';
import 'package:home/widget/HotTalk/CircleHeartIconButton.dart';

class otherComment extends StatelessWidget {
  const otherComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Row(children: [
        BigUserData(
            imagePath: 'assets/icon/avatar/Property 1=Default.svg',
            userClass: '개발자/1기',
            userName: '벨라',
            userType: '강사')
      ]),
      Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              height: 80,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                  color: AppColors.neutral_5,
                  borderRadius: BorderRadius.circular(10)),
              child:
                  const Text('저에게 말씀해주세요! 저 그 강의 다 들었습니다. 뭐든 말씀해주시면 답변 드리겠습니다'),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: CircleHeartIconButton(),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            '1분전',
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
      ),
    ]);
  }
}
