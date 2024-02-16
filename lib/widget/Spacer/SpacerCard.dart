// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Common/GreyBox.dart';
import 'package:home/widget/Common/bigAvatar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpacerCard extends StatelessWidget {
  final String imagePath; // 아바타 이미지
  final String userClass; // 개발자 / 1기
  final String userName; // 신디
  final String userType; // 수료생
  final String tagimagePath;//태그
  
  SpacerCard({
    Key? key,
    required this.userType,
    required this.imagePath,
    required this.userClass,
    required this.userName, 
    required this.tagimagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    print(size.height);
    print(size.width);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top:22),
          child: Container(
            height: 165.4,
            width: 134,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: AppColors.neutral_30, width: 0.2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BigAvatar(imagePath: this.imagePath, userClass: this.userClass),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      this.userName, 
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    GreyBox(text: this.userType),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icon/icon_20/Property 1=Like.svg',
                      width: 20,
                      height: 20,
                    ),
                    Text('400', style: TextStyle(fontSize: 12, color: AppColors.primary_100),
                  ),
                ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 15,
          child: SvgPicture.asset(
            this.tagimagePath,
            width: 70,
            height: 70,
          ),
        ),
      ],
    );
  }
}