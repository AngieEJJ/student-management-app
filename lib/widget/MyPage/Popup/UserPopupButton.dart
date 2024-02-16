import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';

class UserPopUpButton extends StatefulWidget {
  const UserPopUpButton(
      {super.key,
      required this.text1,
      required this.text2,
      required this.available});
  final String text1;
  final String text2;

  final bool available;

  @override
  State<UserPopUpButton> createState() => _UserPopUpButtonState();
}

class _UserPopUpButtonState extends State<UserPopUpButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: BorderSide(
              color: AppColors.primary_80,
            ),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            backgroundColor:
                widget.available ? Colors.white : const Color(0xffCCCCCC),
            foregroundColor: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            widget.text1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontFamily: "asset/Font/Pretendard-Regular.ttf",
              fontWeight: FontWeight.w500,
              letterSpacing: -0.36,
              color: widget.available
                  ? AppColors.primary_80
                  : const Color(0xfff3f3f3),
            ),
          ),
        ),
        SizedBox(width: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: widget.available
                ? AppColors.primary_80
                : const Color(0xfff3f3f3),
            foregroundColor: Colors.black,
          ),
          onPressed: () {},
          child: Text(
            widget.text2,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontFamily: "asset/Font/Pretendard-Regular.ttf",
              fontWeight: FontWeight.w500,
              letterSpacing: -0.36,
              color: widget.available ? Colors.white : const Color(0xffCCCCCC),
            ),
          ),
        ),
      ],
    );
  }
}
