// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home/widget/Common/GreyBox.dart';
import 'package:home/widget/HotTalk/HeartIconButton.dart';
import 'package:home/widget/Common/miniHorizontalUserData.dart';
import 'package:home/widget/MyPage/Popup/DeleteIconPopup.dart';

class MymogakcoEditCard extends StatefulWidget {
  final String imagePath; // 아바타 이미지
  final String userClass;
  // 개발자 / 1기
  final String userName; // 신디
  final String userType; // 수료생
  const MymogakcoEditCard({
    Key? key,
    required this.userType,
    required this.imagePath,
    required this.userClass,
    required this.userName,
  }) : super(key: key);

  @override
  State<MymogakcoEditCard> createState() => _MymogakcoEditCardState();
}

class _MymogakcoEditCardState extends State<MymogakcoEditCard> {
  bool isLongPressed = false;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
        onLongPress: () {
          setState(() {
            isLongPressed = !isLongPressed;
          });
        },
        child: Container(
          margin: EdgeInsets.only(top: 10),
          child: Container(
              height: 230,
              width: MediaQuery.of(context).size.width * 0.97,
              padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: isLongPressed ? AppColors.primary_10 : Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color:
                      isLongPressed ? AppColors.primary_20 : Colors.transparent,
                ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MiniUserData(
                          imagePath:
                              'assets/icon/avatar/Property 1=Default.svg',
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
                                      style: TextStyle(
                                          color: AppColors.neutral_70)),
                                ],
                              ),
                              Text('2023.09.04',
                                  style: TextStyle(
                                      color: AppColors.neutral_60,
                                      fontSize: 12))
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
                  ])),
        ),
      ),
      if (isLongPressed)
        Positioned(
          right: 40,
          top: 0,
          child: Container(
            width: 55,
            height: 55,
            child: IconButton(
              splashRadius: 0.1,
              onPressed: () {
                // MyMogakcoGroupEditPage로 이동
              },
              icon: SvgPicture.asset('assets/icon/icon_30/editable.svg'),
            ),
          ),
        ),
      if (isLongPressed)
        Positioned(
            right: 8,
            top: 0,
            child: DeleteIconPopup(
              title: '내 톡을 삭제하시겠습니까?',
              subtitle: '한번 삭제하면 복구가 불가능합니다.',
              buttonname1: '취소하기',
              buttonname2: '등록하기',
            )),
    ]);
  }
}
