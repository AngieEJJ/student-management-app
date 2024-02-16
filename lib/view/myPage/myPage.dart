import 'package:flutter/material.dart';
import 'package:home/widget/BottomNavBar/BottomNavBar.dart';
import 'package:home/widget/MyPage/Main/MainCard.dart';
import 'package:home/widget/MyPage/Main/MyCatchupMenu.dart';
import 'package:home/widget/MyPage/Main/MyMogakcoMenu.dart';
import 'package:home/widget/MyPage/Main/MyTalkMenu.dart';
import 'package:home/widget/MyPage/Main/SettingMenu.dart';

class myPage extends StatelessWidget {
  const myPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      body: const SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20),
          MainCard(),
          SizedBox(height: 15),
          MyTalkMenu(),
          SizedBox(height: 15),
          MyCatchupMenu(),
          SizedBox(height: 15),
          MyMogakcoMenu(),
          SizedBox(height: 15),
          SettingMenu(),
          SizedBox(height: 10),
        ]),
      ),
    );
  }
}
