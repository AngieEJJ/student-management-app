// 캐치업 카드
// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:developer';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Catchup/DeletePopup.dart';
import 'package:home/widget/Catchup/ProfilePopup.dart';
import 'package:home/widget/Catchup/ScoreLike.dart';
import 'package:home/widget/HotTalk/HeartIconButton.dart';
import 'package:home/widget/Common/GreyBox.dart';
import 'package:home/widget/Common/miniHorizontalUserData.dart';
import 'package:dio/dio.dart';

class CatchupCard extends StatefulWidget {
  final String imagePath; // 아바타 이미지
  final String userClass; // 개발자 / 1기
  final String userName; // 신디
  final String userType;  CatchupCard({
    Key? key,
    required this.userType,
    required this.imagePath,
    required this.userClass,
    required this.userName,
  }) : super(key: key);

  @override
  State<CatchupCard> createState() => _CatchupCardState();
}

class _CatchupCardState extends State<CatchupCard> {
 // 수료생
  final dio = Dio();
    @override
  void initState() {
    testFunc();
    super.initState();
  }
  void testFunc() async {
    final response = await dio.get('https://dev.sniperfactory.com/api/catchup?filter=');
    print(response.data.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width * 0.94, // 모각코는 0.98
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: AppColors.neutral_30, width: 0.2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.only(left: 5, right: 3),
                  margin: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ProfilePopup(
                                    imagePath: 'assets/icon/avatar/Property 1=Default.svg',
                                    userClass: '개발자 / 1기',
                                    userName: '우디',
                                    userType: '수료생',
                                  );
                                },
                              );
                            },
                            child: MiniUserData(
                              imagePath: 'assets/icon/avatar/Property 1=Default.svg',
                              userClass: '개발자 / 1기',
                              userName: '우디',
                              userType: '수료생',
                            ),
                          ),
                          HeartIconButton(),
                        ],
                      ),
                      const SizedBox(height: 8),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return CatchupDeletePopup();
                                },
                              );
                            },
                            child: Text(
                              '플러터 3.10 버전 업데이트 정리 지금부터 알려드릴게요!',
                              style: TextStyle(
                                color: AppColors.neutral_70,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                      const SizedBox(height: 8),
                      const Text('2023.09.04',
                          style: TextStyle(
                            color: AppColors.neutral_70,
                            fontSize: 12,
                          )),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          GreyBox(text: '# 플러터'),
                          const SizedBox(width: 5),
                          GreyBox(text: '# 업데이트'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  // child: AspectRatio(
                  // aspectRatio: 1.0,// 가로 길이 고정.
                  child: SvgPicture.asset(
                    'assets/catchup/rocket.svg',
                    height: double.infinity,
                    fit: BoxFit.cover
                    ),
                  ),
                  // ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const ScoreLike(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          ],
        ),
        const SizedBox(height: 18),
      ],
    );
  }
}
