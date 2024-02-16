// 그룹 만들기
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Common/TitleBar2.dart';
import 'package:home/widget/Mogakco/GroupPostCard.dart';
import 'package:home/widget/Mogakco/GroupPostOptionCard.dart';
import 'package:home/widget/MyPage/Popup/ModifyPopup.dart';

class MyMogakcoGroupEditPage extends StatelessWidget {
  const MyMogakcoGroupEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 3),
            const TitleBar2(Title: '그룹 수정하기'),
            const SizedBox(height: 8),
            PostCard(),
            PostOtionCard(),
            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(bottom: 100, right: 5, left: 5),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ModifyPopup();
                      },
                    );
                    // 동작
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary_100),
                    minimumSize:
                        MaterialStateProperty.all(Size(double.infinity, 55)),
                  ),
                  child: Text(
                    "수정하기",
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
    );
  }
}
