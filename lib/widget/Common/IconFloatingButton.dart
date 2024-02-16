// 아이콘 이미지 경로를 받아 출력하는 FloatingButton 위젯
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';

class IconFloatingButton extends StatelessWidget {
  final String imagePath; // 이미지 경로

  const IconFloatingButton({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: FloatingActionButton(
        backgroundColor: AppColors.primary_80,
        onPressed: () {},
        child: SvgPicture.asset(
          imagePath, 
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ),
    );
  }
}
// 사용
// IconFloatingButton(imagePath: '이미지 경로')