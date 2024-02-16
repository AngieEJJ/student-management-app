// TechnologyStackList
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
class TechnologyStackList extends StatefulWidget {
  const TechnologyStackList({Key? key}) : super(key: key);

  @override
  _TechnologyStackListState createState() => _TechnologyStackListState();
}

class _TechnologyStackListState extends State<TechnologyStackList> {
  int selectedButtonIndex = -1; // 초기에 선택된 버튼이 없음을 나타내기 위한 값
  
  bool isClicked = false;
  
  static List<String> names = ["Flutter", "Python", "JavaScript", "React"];
  static List<String> icons = [
    'assets/icon/icon_50/Flutter.svg',
    'assets/icon/icon_50/Python.svg',
    'assets/icon/icon_50/JS.svg',
    'assets/icon/icon_50/React.svg',
  ];


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 5),
        for (int i = 0; i < names.length; i++)
          _buildSvgIconButton(
            icons[i],
            i,
          ),
      ],
    );
  }

  Widget _buildSvgIconButton(String svgAssetPath, int index) {
    bool isClicked = (index == selectedButtonIndex);


    return Row(
      children: [
        SizedBox(width: 8),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    if (isClicked) {
                      selectedButtonIndex = -1; // 이미 선택된 버튼 탭하면 선택 해제
                    } else {
                      selectedButtonIndex = index; // 탭한 버튼을 선택한 상태로 등록함
                    }
                  });
                },
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: isClicked ? AppColors.primary_100 : AppColors.neutral_10,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            svgAssetPath,
                            width: 25,
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      names[index],
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: isClicked ? AppColors.primary_100 : AppColors.neutral_40,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
