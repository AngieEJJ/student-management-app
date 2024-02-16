// 모각코카드 클릭시 삭제된 데이터면 뜨는 팝업 창
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Button/validateButton.dart';

class MogakcoDeletePopup extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), 
      ),
      alignment: Alignment.center,
      content: Container(
        constraints: BoxConstraints(
          maxHeight: 190, 
          minWidth: 80,
        ),
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            SvgPicture.asset(
              "assets/icon/icon_20/warning.svg",
              height: 70,
              ),
            SizedBox(height: 16),
            Text(
              '이미 삭제된 모각코입니다!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              '클릭하신 모각코를 찾을 수 없습니다.',
              style: TextStyle(
                fontSize: 15,
                color: AppColors.neutral_40,
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 30,
              child: ValidateButton(
                available: true,
                text: "닫기",
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}