import 'package:flutter/material.dart';
import 'package:home/view/LoginPage/SignupComplPage.dart';
import 'package:home/view/LoginPage/loginPage.dart';
import 'package:home/view/LoginPage/splashPage.dart';
import 'package:home/view/catchupPage/CatchupPage.dart';
import 'package:home/view/catchupPage/HotCatchupPage.dart';
import 'package:home/view/homePage/main_page.dart';
import 'package:home/view/myPage/myPage.dart';
import 'package:home/view/spacerPage/spacerPage.dart';
import 'package:home/view/talkPage/HotTalkDetailPage.dart';
import 'package:home/view/talkPage/SingleDetailPage.dart';
import 'package:home/view/talkPage/TalkPage.dart';
import 'package:home/view/talkPage/TalkTalkDetailPage.dart';
import 'package:home/styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => SplashPage(),
          '/login' : (context) => const LoginPage(),
          '/home' : (context) => const MainPage(index: 0),
          '/talk' : (context) => const MainPage(index: 1),
          '/talk/hot': (context) => const HotTalkDetailPage(),
          '/talk/talk': (context) => const TalkTalkDetailPage(),
          '/talk/detail': (context) => const SingleDetailPage(),
          '/catchup' : (context) =>const MainPage(index: 2),
          '/catchup/hot' : (context) =>const HotCatchupPage(),
          '/catchup/catchup' : (context) => CatchupPage(),
          '/mogakko' : (context) =>const MainPage(index: 3),
          '/mypage' : (context) =>const myPage(),
          '/spacer' : (context) =>const SpacerPage(),
          // '/talk' : (context) => const TalkPage(),
          '/SignUpComplete' : (context) => SignUPCompletePage(),
        },
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.background_5,
          fontFamily: 'Pretendard',
        ),
        // home: UpdatePage(),
        // home: Scaffold(
        //     body: SplashPage())
      ),
    );
  }
}
