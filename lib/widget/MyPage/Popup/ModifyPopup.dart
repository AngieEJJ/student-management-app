import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/MyPage/Popup/UserPopupButton.dart';

class ModifyPopup extends StatelessWidget {
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
              '그룹 내용을 수정하시겠습니까?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              '한번 수정하면 예전으로 복구할 수 없습니다.',
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
                UserPopUpButton(text1: '취소하기', text2: '수정하기', available: true)
              ]),
            )
          ],
        ),
      ),
    );
  }
}
