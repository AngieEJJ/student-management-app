// 스플래쉬 페이지
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/view/LoginPage/loginPage.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 110),
              child: SvgPicture.asset(
                'assets/graphic/splash.svg',
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(bottom: 100, right: 5, left: 5),
                child: ElevatedButton(
                  onPressed: () {
                    // 동작
                    Navigator.of(context).pushReplacementNamed("/login");
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.primary_100),
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 55)),
                  ),
                  child: Text("시작하기"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}