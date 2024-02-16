// 날짜순 정렬 버튼
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home/styles/app_colors.dart';

class SortButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // 날짜순 정렬 기능 추가
      },
      child: Container(
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.transparent, 
        ),
        child: Row(
          children: [
            SvgPicture.asset('assets/icon/icon_30/Swap.svg',
              width: 18,
              height: 18, 
              ), 
            SizedBox(width: 8),
            Text(
              '날짜순',
              style: TextStyle(
                color: AppColors.primary_100,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}