import 'package:flutter/material.dart';
import 'package:home/widget/MyPage/Popup/UserPopupButton.dart';

class LogoutPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      content: Container(
        constraints: BoxConstraints(
          maxHeight: 100,
          maxWidth: 70,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '정말 로그아웃 하시겠습니까?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 30,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                UserPopUpButton(text1: '취소하기', text2: '로그아웃', available: true)
              ]),
            )
          ],
        ),
      ),
    );
  }
}
