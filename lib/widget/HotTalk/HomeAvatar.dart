import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';

class HomeAvatar extends StatelessWidget {
  const HomeAvatar(
      {super.key, required this.imagePath, required this.userClass});

  final String imagePath;
  final String? userClass;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: 100,
        height: 80,
        child: Stack(children: [
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(imagePath),
          ),
          if (userClass != null)
            Positioned(
              top: 63,
              right: 16,
              left: 16,
              child: Container(
                alignment: Alignment.center,
                height: 16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColors.primary_80,
                ),
                child: Text(
                  ' $userClass ',
                  style: const TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
            )
        ]),
      ),
      const SizedBox(
        height: 3,
      ),
      const Text(
        '캐서린',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
