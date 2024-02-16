// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home/widget/Common/GreyBox.dart';
import 'package:home/widget/HotTalk/HeartIconButton.dart';
import 'package:home/widget/Common/miniHorizontalUserData.dart';
import 'package:home/widget/HotTalk/ScoreAvatar.dart';
import 'package:home/widget/Mogakco/DeletePopup.dart';

class MoggakcoCard extends StatelessWidget {
  final String imagePath; // 아바타 이미지
  final String userClass; // 개발자 / 1기
  final String userName; // 신디
  final String userType; // 수료생
  const MoggakcoCard({
    Key? key,
    required this.userType,
    required this.imagePath,
    required this.userClass,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 230,
          width: MediaQuery.of(context).size.width * 0.97,
          padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: AppColors.neutral_30, width: 0.2),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return MogakcoDeletePopup();
                      },
                    );
                  },
                  child: Container(
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
                          '저희 유니티로 개발을 공부해서 게임 제작을 콕표로 하고자합니다. 유니티 3d를 이용해 할 수 있는 간단한 터치 게임부터 블라블라블라블라블라블라블라블라블라블라블라블라',
                          style: TextStyle(
                              color: AppColors.neutral_70, fontSize: 15),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
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
                                        fontWeight: FontWeight.bold)),
                                Text('/6 참여',
                                    style:
                                        TextStyle(color: AppColors.neutral_70)),
                              ],
                            ),
                            Text('2023.09.04',
                                style: TextStyle(
                                    color: AppColors.neutral_60, fontSize: 12))
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            GreyBox(text: '# 빅데이터'),
                            SizedBox(width: 5),
                            GreyBox(text: '# 프론트엔드'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const ScoreAvatar(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          ],
        ),
      ],
    );
  }
}
