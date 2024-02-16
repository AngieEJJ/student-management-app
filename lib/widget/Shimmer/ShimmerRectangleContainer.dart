// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';

class ShimmerRectangleContainer extends StatelessWidget {
  const ShimmerRectangleContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: AppColors.neutral_20,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
