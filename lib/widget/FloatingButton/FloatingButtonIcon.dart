import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';

class FloatingButtonIcon extends StatelessWidget {
  const FloatingButtonIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: FloatingActionButton(
        backgroundColor: AppColors.primary_80,
        onPressed: () {},
        child: SvgPicture.asset('assets/icon/icon_30/Community.svg',
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
      ),
    );
  }
}
