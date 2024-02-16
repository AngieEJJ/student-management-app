import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:home/widget/Ad/ad.dart';
import 'package:home/widget/BottomNavBar/BottomNavBar.dart';
import 'package:home/widget/Catchup/CatchupCard.dart';
import 'package:home/widget/Common/TitleBar.dart';
import 'package:home/widget/HotTalk/BubbleChat.dart';
import 'package:home/widget/HotTalk/HomeAvatar.dart';

import 'package:home/widget/Mogakco/MogakcoCard.dart';
import 'package:home/widget/Search/search.dart';
// import 'package:home/widget/Spacer/SpacerCard.dart';
import 'package:home/widget/Spacer/SpacerCardList.dart';
import 'package:http/http.dart' as http;

class homePage extends StatelessWidget {
  const homePage({super.key});

  Future<List<Map<String, dynamic>>?> hotTalk() async {
    final Uri apiUri = Uri.parse('https://dev.sniperfactory.com/api/top/talk');
    final response = await http.get(apiUri);
    if (response.statusCode == 200) {
      final responseData =
          json.decode(utf8.decode(response.bodyBytes)); // 문자열을 인코딩
      if (responseData['status'] == 'success') {
        return List<Map<String, dynamic>>.from(responseData['data']);
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Ad(),
            const SizedBox(height: 3),
            const Search(),
            const TitleBar(
              imagePath: 'assets/icon/icon_70/fire.svg',
              Title: '핫한 톡',
              url: '/talk',
            ),

            Column(children: [
              const Row(
                children: [
                  HomeAvatar(
                      imagePath: 'assets/icon/avatar/Property 1=Default.svg',
                      userClass: '개발자/1기'),
                  BubbleChat(),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  HomeAvatar(
                      imagePath: 'assets/icon/avatar/Property 1=Default.svg',
                      userClass: '개발자/1기'),
                  BubbleChat(),
                ],
              )
            ]),
            SizedBox(height: 10),
            const TitleBar(
              imagePath: 'assets/icon/icon_70/dart.svg',
              Title: '핫한 캐치업',
              url: '/catchup',
            ),
            CatchupCard(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
            ),
            const TitleBar(
              imagePath: 'assets/icon/icon_70/letter.svg',
              Title: '핫한 모각코',
              url: '/mogakko',
            ),
            const MoggakcoCard(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
            ),
            const TitleBar(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              Title: '이달의 스페이서',
              url: '/spacer',
            ),
            // Wi<SpacerCardList>,
            SpacerCardList(),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
