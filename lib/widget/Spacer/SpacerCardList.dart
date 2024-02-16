import 'package:flutter/material.dart';
import 'package:home/widget/Spacer/SpacerCard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SpacerCardList extends StatefulWidget {
  SpacerCardList({Key? key}) : super(key: key);

  final List<List<String>> spacerCardData = [
    // 이달의 스페이서 정보와 태그 리스트. 태그 뺴고 유저정보 받아올 수 있게 하기
    [
      'assets/icon/avatar/Property 1=Default.svg',
      '개발자/1기',
      '신디',
      '수료생',
      'assets/icon/tag/1st.svg'
    ],
    [
      'assets/icon/avatar/Property 1=Default.svg',
      '개발자/1기',
      '우디',
      '수료생',
      'assets/icon/tag/2nd.svg'
    ],
    [
      'assets/icon/avatar/Property 1=Default.svg',
      '개발자/1기',
      '영채',
      '수료생',
      'assets/icon/tag/3rd.svg'
    ],
    // ['assets/icon/avatar/Property 1=Default.svg', '개발자/1기', '은진', '수료생', 'assets/icon/tag/4th.svg'],
    // ['assets/icon/avatar/Property 1=Default.svg', '개발자/1기', '예지', '수료생', 'assets/icon/tag/5th.svg'],
    // ['assets/icon/avatar/Property 1=Default.svg', '개발자/1기', '서정', '수료생', 'assets/icon/tag/6th.svg'],
  ];

  @override
  State<SpacerCardList> createState() => _SpacerCardListState();
}

class _SpacerCardListState extends State<SpacerCardList> {
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.37);
  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      final newPage = (controller.page ?? 0).round();
      if (newPage != currentPage) {
        setState(() {
          currentPage = newPage;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 230,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 15, bottom: 20),
            child: ListView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemCount: widget
                  .spacerCardData.length, // Use the length of your data list
              itemBuilder: (BuildContext context, int index) {
                // Access data for the current SpacerCard from the list
                List<String> data = widget.spacerCardData[index];
                return Container(
                  child: SpacerCard(
                    imagePath: data[0],
                    userClass: data[1],
                    userName: data[2],
                    userType: data[3],
                    tagimagePath: data[4],
                  ),
                );
              },
            ),
          ),
        ),
        SmoothPageIndicator(
          controller: controller,
          count:
              widget.spacerCardData.length, // Use the length of your data list
          effect: ColorTransitionEffect(
            dotWidth: 7,
            dotHeight: 7,
            activeDotColor: const Color.fromRGBO(51, 122, 255, 1),
            dotColor: Colors.grey.shade400,
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
