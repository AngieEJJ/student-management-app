import 'package:flutter/material.dart';
import 'package:home/widget/Common/GreyBox.dart';
import 'package:home/widget/Common/bigAvatar.dart';

class BigUserData extends StatelessWidget {
  final String imagePath; // 아바타 이미지
  final String userClass;
  final String userName;
  final String userType;

  const BigUserData(
      {super.key,
      required this.imagePath,
      required this.userClass,
      required this.userName,
      required this.userType});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BigAvatar(
          imagePath: imagePath,
          userClass: userClass,
        ),
        Text(
          userName,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 7),
        GreyBox(text: userType),
      ],
    );
  }
}
