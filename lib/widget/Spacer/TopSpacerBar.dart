import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Common/miniHorizontalUserData.dart';

class SpacerBar extends StatelessWidget {
  // final String imagePath; // 아바타 이미지
  // final String userClass; // 개발자 / 1기
  // final String userName; // 신디
  // final String userType; // 수료생
  final List<String> userData; // imagePath, userClass, userName, userType 순서
  // final int Like;

  SpacerBar({
    Key? key,
    required this.userData,
  }) : super(key: key);

  final List<String> tagimagePath = [
    'assets/icon/tag/4th.svg',
    'assets/icon/tag/5th.svg',
    'assets/icon/tag/6th.svg',
    'assets/icon/tag/7th.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(top: 15),
          child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width * 0.97,
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: AppColors.neutral_30, width: 0.2),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 50, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    child: MiniUserData(
                      imagePath: this.userData[0],
                      userClass: this.userData[1],
                      userName: this.userData[2],
                      userType: this.userData[3],
                    ),
                  ),
                  // TODO 얘가 문제
                  // Stack(
                  //   children: [
                  //     Positioned(
                  //       right: 0,
                  //       child: SvgPicture.asset(tagimagePath[index]),
                  //     ),
                  //   ],
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icon/icon_20/Property 1=Like.svg',
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        '400',
                        style: TextStyle(fontSize: 12, color: AppColors.primary_100),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}