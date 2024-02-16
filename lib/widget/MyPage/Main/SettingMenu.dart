import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/view/homePage/homePage.dart';
import 'package:home/widget/MyPage/DottedLinePackage.dart';
import 'package:home/widget/MyPage/Popup/LogoutPopup.dart';
import 'package:home/widget/MyPage/Popup/SignoutPopup.dart';

class SettingMenu extends StatelessWidget {
  const SettingMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 280,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
        border: Border.all(
          color: AppColors.neutral_10,
          width: 1,
        ),
      ),
      child: Column(children: [
        ListTile(
          horizontalTitleGap: -10,
          leading: SvgPicture.asset(
            'assets/icon/icon_20/_Setting.svg',
          ),
          title: const Text(
            '설정',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        ListTile(
          dense: true,
          leading: const Text(
            '내 정보 수정하기',
            style: TextStyle(fontSize: 16),
          ),
          trailing: SvgPicture.asset(
            'assets/icon/icon_20/Right.svg',
          ),
        ),
        DottedLinePackage(
          lineLength: MediaQuery.of(context).size.width * 0.85,
        ),
        ListTile(
          dense: true,
          leading: const Text(
            '비밀번호 변경',
            style: TextStyle(fontSize: 16),
          ),
          trailing: SvgPicture.asset(
            'assets/icon/icon_20/Right.svg',
          ),
        ),
        DottedLinePackage(
          lineLength: MediaQuery.of(context).size.width * 0.85,
        ),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return LogoutPopup();
              },
            );
          },
          child: ListTile(
            dense: true,
            leading: const Text(
              '로그아웃',
              style: TextStyle(fontSize: 16),
            ),
            trailing: SvgPicture.asset(
              'assets/icon/icon_20/Right.svg',
            ),
          ),
        ),
        DottedLinePackage(
          lineLength: MediaQuery.of(context).size.width * 0.85,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: ((context) => homePage())),
            );
          },
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return SignOutPopup();
                },
              );
            },
            child: ListTile(
              dense: true,
              leading: const Text(
                '회원탈퇴',
                style: TextStyle(fontSize: 16),
              ),
              trailing: SvgPicture.asset(
                'assets/icon/icon_20/Right.svg',
              ),
            ),
          ),
        ),
        DottedLinePackage(
          lineLength: MediaQuery.of(context).size.width * 0.85,
        ),
      ]),
    ));
  }
}
