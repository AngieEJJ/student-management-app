import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';

class ScoreAvatar extends StatelessWidget {
  const ScoreAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icon/icon_20/Chat2.svg',
          height: 20,
        ),
        const Text(
          '5',
          style: TextStyle(fontSize: 11, color: AppColors.primary_80),
        ),
        const SizedBox(width: 8),
        SvgPicture.asset(
          'assets/icon/icon_20/Property 1=Like.svg',
          height: 14,
        ),
        const Text(
          '5',
          style: TextStyle(fontSize: 11, color: AppColors.primary_80),
        ),
      ],
    );
  }
}
