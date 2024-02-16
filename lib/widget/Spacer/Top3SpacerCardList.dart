// 이달의 스페이서 페이지에 들어가는 top 3 스페이서 리스트 위젯
import 'package:flutter/material.dart';
import 'package:home/widget/Spacer/SpacerCard.dart';

class Top3SpacerCardList extends StatelessWidget {
  Top3SpacerCardList({Key? key}) : super(key: key);

  final List<List<String>> spacerCardData = [ 
    [ // 1등
      'assets/icon/avatar/Property 1=Default.svg',
      '개발자/1기',
      '신디',
      '수료생',
      'assets/icon/tag/1st.svg'
    ],
    [// 2등
      'assets/icon/avatar/Property 1=Default.svg',
      '개발자/1기',
      '우디',
      '수료생',
      'assets/icon/tag/2nd.svg'
    ],
    [// 3등
      'assets/icon/avatar/Property 1=Default.svg',
      '개발자/1기',
      '영채',
      '수료생',
      'assets/icon/tag/3rd.svg'
    ],
  ];

  double left = 10;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Expanded(
      // width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.333,
            height: size.width * 0.333 + 59,
            child: Resize(
              scale:0.9,
              originalWidget: SpacerCard( // 3등
                imagePath: spacerCardData[2][0],
                userClass: spacerCardData[2][1],
                userName: spacerCardData[2][2],
                userType: spacerCardData[2][3],
                tagimagePath: spacerCardData[2][4],
              ),
              ),
          ),
      Container(
        width: size.width * 0.333,
        height: size.width * 0.333 + 59,
        child: Resize(
          scale:1,
            originalWidget: SpacerCard( // 1등
              imagePath: spacerCardData[0][0],
              userClass: spacerCardData[0][1],
              userName: spacerCardData[0][2],
              userType: spacerCardData[0][3],
              tagimagePath: spacerCardData[0][4],
            ),
            ),
      ),
          Container(
            width: size.width * 0.333,
            height: size.width * 0.333 + 59,
            child: Resize(
              scale:0.9,
              originalWidget: SpacerCard( // 2등
              imagePath: spacerCardData[1][0],
              userClass: spacerCardData[1][1],
              userName: spacerCardData[1][2],
              userType: spacerCardData[1][3],
              tagimagePath: spacerCardData[1][4],
            ),
            ),
          ),
        ],
      ),
    );
  }

}class Resize extends StatelessWidget {// 컨테이너 위젝 조정 클래스
  final Widget originalWidget; 
  final double scale; // 0.1 ~ 1 사이 값. 1이 원래 크기

  Resize({required this.originalWidget, this.scale = 0.5});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale, 
      child: originalWidget, 
    );
  }
}