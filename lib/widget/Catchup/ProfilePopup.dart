// 캐치업카드 프로필 클릭시 뜨는 팝업창
// 로그인 파트에서 만든 위젯 재사용 예정이라 내용만 정리해놓음
import 'package:flutter/material.dart';
import 'package:home/widget/Common/bigHorizontalUserData.dart';

class ProfilePopup extends StatelessWidget {
  final String imagePath;
  final String userClass;
  final String userName;
  final String userType;

  ProfilePopup({
    required this.imagePath,
    required this.userClass,
    required this.userName,
    required this.userType,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), 
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('프로필',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BigUserData(
            imagePath: imagePath,
            userClass: userClass,
            userName: userName,
            userType: userType,
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
// 사용
// ProfilePopup(
//   imagePath: 'assets/icon/avatar/Property 1=Default.svg',
//   userClass: '개발자 / 1기',
//   userName: '우디',
//   userType: '수료생',
// ),