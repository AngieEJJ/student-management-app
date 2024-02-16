import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ad extends StatefulWidget {
  const Ad({super.key});

  @override
  State<Ad> createState() => _AdState();
}

class _AdState extends State<Ad> {
  PageController controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180,
          child: PageView(
            controller: controller,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page; // page가 변경될때마다 currentPage 업데이트
              });
            },
            children: [
              Container(
                child: SvgPicture.asset(
                  'assets/ad/ad.svg',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Container(
                child: SvgPicture.asset(
                  'assets/ad/ad.svg',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Container(
                child: SvgPicture.asset(
                  'assets/ad/ad.svg',
                  width: MediaQuery.of(context).size.width,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 15),
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: ColorTransitionEffect(
            dotWidth: 7,
            dotHeight: 7,
            activeDotColor: const Color.fromRGBO(51, 122, 255, 1),
            dotColor: Colors.grey.shade400,
          ),
        ),
      ],
    );
  }
}
