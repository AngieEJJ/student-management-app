import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home/widget/Common/GreyBox.dart';
import 'package:home/widget/HotTalk/HeartIconButton.dart';
import 'package:home/widget/Common/miniHorizontalUserData.dart';

class DetailMogakco extends StatelessWidget {
  final String imagePath; // 아바타 이미지
  final String userClass; // 개발자 / 1기
  final String userName; // 신디
  final String userType; // 수료생
  const DetailMogakco({
    Key? key,
    required this.userType,
    required this.imagePath,
    required this.userClass,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 100,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
          margin: EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MiniUserData(
                      imagePath: 'assets/icon/avatar/Property 1=Default.svg',
                      userClass: '개발자 / 1기',
                      userName: '우디',
                      userType: '수료생',
                    ),
                    HeartIconButton(),
                  ],
                ),
                // SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.only(left: 12, right: 10, top: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '[모집중] ',
                            style: TextStyle(
                                color: AppColors.primary_100,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            '모각코 팀을 모집합니다',
                            style: TextStyle(
                                color: AppColors.neutral_70,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        '저희 유니티로 개발을 공부해서 게임 제작을 목표로 하고자합니다. 와 너무 재있겠죠 그죠?? 저도 너무 기대가 됩니다!\n\n유니티 3d를 이용해 할 수 있는 간단한 터치 게임부터 공굴리기, 블럭 부수기 게임 등 다양한 인터렉션을 코딩으로 구현하는 연습부터 점차 과정을 심화하여 결과적으로는 하나의 게임 출시를 위한 실력을 기르고자 합니다!\n많은 분들의 참여를 기대하고 있겠습니다! 함께해요!!',
                        style: TextStyle(
                            color: AppColors.neutral_70, fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 20,
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GreyBox(text: '# ' + '프론트엔드'),
                              SizedBox(width: 5),
                              GreyBox(text: '# ' + '유니티'),
                            ],
                          ),
                          Text('2023.09.04',
                              style: TextStyle(
                                  color: AppColors.neutral_60, fontSize: 12))
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icon/icon_70/man-who.svg',
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(width: 3),
                          Text('5',
                              style: TextStyle(
                                  color: AppColors.primary_100,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                          Text('/6 참여',
                              style: TextStyle(
                                  color: AppColors.neutral_70, fontSize: 15)),
                        ],
                      ),
                    ],
                  ),
                ),
              ])),
    );
  }
}
