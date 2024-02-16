// 업데이트 페이지
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';

class UpdatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/graphic/Graphic5.svg',
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
                SizedBox(height: 16),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.neutral_90,
                  ),
                  child: Text('원활한 서비스 이용을 위해\n최신 버전으로 업데이트 해주세요.'),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.neutral_40,
                  ),
                  child: Text('안정적인 서비스를 위해 항상 최신 버전을 유지해주세요.'),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity, 
            child: Padding(
              padding: EdgeInsets.only(bottom: 100, right: 5, left: 5),
              child: ElevatedButton(
                onPressed: () {
                  // 동작
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.primary_100), 
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 55)),
                ),
                child: Text("지금 업데이트하기",
                style: TextStyle(
                  fontSize: 18,
                ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}