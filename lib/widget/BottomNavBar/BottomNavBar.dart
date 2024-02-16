import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home/styles/app_colors.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}
class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  List<double> greyScaleFilter = <double>[
    0.2126,0.7152,0.0722,0,0, 
    0.2126,0.7152,0.0722,0,0, 
    0.2126,0.7152,0.0722,0,0, 
    0,0,0,1,0, 
    ];
  static List<String> itemUrls = ["/home", "/talk", "/catchup", "/mogakko", "/mypage"];
  static List<String> itemNames = ["홈", "톡", "캐치업!", "모각코!", "마이페이지"];
  static List<String> itemIcons = [
    'assets/icon/icon_30/Home.svg',
    'assets/icon/icon_30/Community.svg',
    'assets/icon/icon_30/Work.svg',
    'assets/icon/icon_30/Lounge.svg',
    'assets/icon/icon_50/woman-a.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, 
      items: <BottomNavigationBarItem>[
        for (int i = 0; i < itemNames.length; i++)
          BottomNavigationBarItem(
            icon: _selectedIndex == i
                ? SvgPicture.asset(
                    itemIcons[i],
                    height: 24,
                    width: 24,
                  )
                : ColorFiltered(
                    colorFilter: ColorFilter.matrix(greyScaleFilter),
                    child: SvgPicture.asset(
                      itemIcons[i],
                      height: 24,
                      width: 24,
                    ),
                  ),
            label: itemNames[i],
          ),
      ],
      currentIndex: _selectedIndex,
      onTap: (int index) {
        Navigator.of(context).pushNamed(itemUrls[index]);
        setState(() {
          _selectedIndex = index;
        });
      },
      selectedItemColor: AppColors.primary_100, 
      unselectedItemColor: AppColors.background_100,
      selectedLabelStyle: TextStyle(fontSize: 11), 
      unselectedLabelStyle: TextStyle(fontSize: 11), 
    );
  }
}