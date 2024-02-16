import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';

class MainCardScore extends StatelessWidget {
  const MainCardScore(
      {super.key,
      required this.imagePath,
      required this.iconPath,
      required this.text});

  final String imagePath;
  final String iconPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 7),
        SvgPicture.asset(imagePath),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconPath),
            Text(
              text,
              style: TextStyle(
                color: AppColors.primary_80,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
