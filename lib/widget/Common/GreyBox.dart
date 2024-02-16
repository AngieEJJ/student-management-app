// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';

class GreyBox extends StatelessWidget {
  final String text;

  GreyBox({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(//Container를 text에 따라 가로 크기를 조정
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: AppColors.stroke_line_5,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.0),
          child: Text(
            "   $text   ",
            style: TextStyle(color: AppColors.neutral_60, fontSize: 12),
          ),
        ),
      ),
    );
  }
}