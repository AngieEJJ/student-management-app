import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';

class DottedLinePackage extends StatelessWidget {
  const DottedLinePackage({super.key, required this.lineLength});

  final double lineLength;

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      lineThickness: 1.2,
      lineLength: lineLength,
      dashColor: AppColors.neutral_10,
      dashGapLength: 8,
      dashLength: 5,
    );
  }
}
