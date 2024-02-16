// 모각코 상세보기 페이지
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Common/TitleBar2.dart';
import 'package:home/widget/Mogakco/DetailAvatarList.dart';
import 'package:home/widget/Mogakco/DetailMogakco.dart';
import 'package:home/widget/Mogakco/GroupParticipationPopup.dart';

class DetailHotMogackoPage extends StatelessWidget {
  const DetailHotMogackoPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              color: AppColors.background_5,
              child: Column(
                children: [
                  const SizedBox(height: 3),
                  const TitleBar2(Title: '모각코 상세보기'),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  DetailMogakco(
                    imagePath: 'assets/icon/icon_70/laptop.svg',
                    userClass: '개발자/1기',
                    userName: '신디',
                    userType: '수료생',
                  ),
                  DetailAvatarList(
                    imagePaths: [
                      'assets/icon/icon_70/man-a.svg',
                      'assets/icon/icon_70/man-e.svg',
                      'assets/icon/icon_70/woman-c.svg',
                      'assets/icon/icon_70/woman-a.svg',
                      'assets/icon/icon_70/man-b.svg',
                      'assets/icon/icon_70/man-h.svg',
                    ],
                    userClassList: [
                      '개발자 / 1기',
                      '개발자 / 1기',
                      '개발자 / 1기',
                      '개발자 / 1기',
                      '개발자 / 1기',
                      '개발자 / 1기',
                    ],
                    userNameList: [
                      '영채',
                      '은진',
                      '예지',
                      '영채',
                      '은진',
                      '예지',
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 100, right: 5, left: 5),
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return GroupParticipationPopup(); 
                            },
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(AppColors.primary_100),
                          minimumSize: MaterialStateProperty.all(Size(double.infinity, 55)),
                        ),
                        child: Text(
                          "참여하기",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
