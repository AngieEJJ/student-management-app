import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Common/GreyBox.dart';

class MainCardAvatar extends StatelessWidget {
  const MainCardAvatar(
      {super.key, required this.imagePath, required this.userClass});
  final String imagePath;
  final String userClass;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(children: [
            Container(
              width: 110,
              height: 120,
              child: Stack(children: [
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    imagePath,
                    width: 200,
                    height: 200,
                  ),
                ),
                Positioned(
                  top: 100,
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
                ),
                const SizedBox(height: 3),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '캐서린',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                GreyBox(text: '수료생'),
              ],
            ),
          ]),
        ),
        Positioned(
          top: 0,
          right: 130,
          child: Container(
            width: 80,
            height: 80,
            child: IconButton(
              splashRadius: 0.1,
              splashColor: AppColors.primary_10,
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icon/icon_30/editable.svg',
                height: 50,
                width: 50,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
