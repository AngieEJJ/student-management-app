// 이달의 스페이서
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Spacer/Top3SpacerCardList.dart';
import 'package:home/widget/Spacer/TopSpacerBar.dart';
import 'package:home/widget/Spacer/WhiteTilteBar.dart';

class SpacerPage extends StatelessWidget {
  const SpacerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body:Stack(
        children:[Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.9,
        child: CustomPaint(
          painter: MyPainter(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //WhiteTitleBar(Title: '이달의 스페이서'),
              SizedBox(height: 20),
              SvgPicture.asset(
                'assets/graphic/Graphic4.svg',
                height: 80,
                width: 80,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
        SizedBox(height: MediaQuery.of(context).size.height*0.6,
            child: Top3SpacerCardList()),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 330),
              child: Expanded(
                child: SpacerBar( userData: ['assets/icon/avatar/Property 1=Default.svg','영채','개발자/1기','수료생'], ),
                ),
            ),
            ],
          ),
      ],)
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, 0);
    path.quadraticBezierTo(
        size.width / 2, 100, size.width, 0);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    paint.color = Colors.blue;
    Path bluePath = Path();
    bluePath.lineTo(0, size.height / 3);
    bluePath.quadraticBezierTo(size.width / 2, size.height / 2.5, size.width, size.height / 3);
    bluePath.lineTo(size.width, 0);
    bluePath.close();
    canvas.drawPath(bluePath, paint);

    paint.color = AppColors.background_5;
    Path whitePath = Path();
    whitePath.moveTo(0, size.height / 3);
    whitePath.quadraticBezierTo(size.width / 2, size.height / 2, size.width, size.height / 3);
    whitePath.lineTo(size.width, size.height);
    whitePath.lineTo(0, size.height);
    whitePath.close();
    canvas.drawPath(whitePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

