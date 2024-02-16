import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/MyPage/Popup/UserPopupButton.dart';

class Quitpopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      content: Container(
        constraints: BoxConstraints(
          maxHeight: 130,
          maxWidth: 70,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '참여중인 그룹에서 탈퇴하시겠습니까?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              '탈퇴한 그룹에서 다시 참여가 가능합니다.',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.neutral_40,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 30,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                UserPopUpButton(text1: '취소하기', text2: '탈퇴하기', available: true)
              ]),
            )
          ],
        ),
      ),
    );
  }
}
