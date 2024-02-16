import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircleHeartIconButton extends StatefulWidget {
  const CircleHeartIconButton({super.key});

  @override
  State<CircleHeartIconButton> createState() => _HeartIconButtonState();
}

class _HeartIconButtonState extends State<CircleHeartIconButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 0.01,
      onPressed: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      icon: isSelected
          ? SvgPicture.asset(
              'assets/icon/icon_20/Property 1=circle_Like.svg',
              height: 100,
            )
          : SvgPicture.asset(
              'assets/icon/icon_20/Property 1=circle_dislike.svg',
              height: 100,
            ),
    );
  }
}
