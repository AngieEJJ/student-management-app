import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/view/catchupPage/AllCatchupPage.dart';
import 'package:home/view/homePage/homePage.dart';
import 'package:home/view/mogakkoPage/AllMogakcoPage.dart';
import 'package:home/view/myPage/myCatchup/myCatchupPage.dart';
import 'package:home/view/myPage/myCatchup/myLikeCatchupPage.dart';
import 'package:home/view/myPage/myMogakco/myGroupEditPage.dart';
import 'package:home/view/myPage/myMogakco/myGroupPage.dart';
import 'package:home/view/myPage/myMogakco/myJoinGroupPage.dart';
import 'package:home/view/myPage/myMogakco/myJoinMogakcoPage.dart';
import 'package:home/view/myPage/myMogakco/myMokgakcoGroupEditPage.dart';
import 'package:home/view/myPage/myPage.dart';
import 'package:home/view/myPage/myTalk/myCommentPage.dart';
import 'package:home/view/myPage/myTalk/myLikePage.dart';
import 'package:home/view/myPage/myTalk/myTalkDetailPage.dart';
import 'package:home/view/myPage/myTalk/myTalkPage.dart';
import 'package:home/view/spacerPage/spacerPage.dart';
import 'package:home/view/talkPage/TalkPage.dart';

class MainPage extends StatelessWidget {
  final int index;
  const MainPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const homePage(),
      const TalkPage(),
      const AllCatchupPage(),
      const AllMogakcoPage(),
      const myPage(),
    ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: SvgPicture.asset(
          'assets/icon/logo/Nav_Logo.svg',
          width: 70,
        ),
      ),
      body: pages[index],
    );
  }
}
