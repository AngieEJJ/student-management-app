import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeartIconButton extends StatefulWidget {
  const HeartIconButton({super.key});

  @override
  State<HeartIconButton> createState() => _HeartIconButtonState();
}

class _HeartIconButtonState extends State<HeartIconButton> {
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
          ? SvgPicture.asset('assets/icon/icon_20/Property 1=Like.svg')
          : SvgPicture.asset('assets/icon/icon_20/Property 1=NotSelect.svg'),
    );
  }
}
