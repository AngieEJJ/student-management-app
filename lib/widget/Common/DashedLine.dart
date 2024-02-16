// 점선 화면에 표시
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';

class DashedLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.0, 
      width: double.infinity, 
      child: CustomPaint(
        painter: DashedLinePainter(),
      ),
    );
  }
}
// 점선 그림
class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = AppColors.neutral_10
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    final double dashWidth = 7; // 점선 간격
    final double dashSpace = 5; // 점선 사이 공백

    double startX = 0;
    while (startX < size.width) {
      canvas.drawPath(
        Path()
          ..moveTo(startX, size.height / 2)
          ..lineTo(startX + dashWidth, size.height / 2),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}