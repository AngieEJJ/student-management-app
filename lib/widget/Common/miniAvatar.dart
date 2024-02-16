import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MiniAvatar extends StatelessWidget {
  final String imagePath; // 아바타 이미지
  final String userClass;
  

  MiniAvatar({
    super.key, 
    required this.imagePath, 
    required this.userClass
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 58,
      child: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            this.imagePath,
            height: 45,
            width: 45,
          ),
        ),
        Positioned(
          top: 45,
          right: 0,
          left: 0,
          child: Container(
            alignment: Alignment.center,
            height: 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: const Color.fromRGBO(51, 122, 255, 1),
            ),
            child: Text(
              ' '+ this.userClass + ' ',
              style: TextStyle(color: Colors.white, fontSize: 9),
            ),
          ),
        )
      ]),
    );
  }
}