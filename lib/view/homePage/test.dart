import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:home/widget/HotTalk/BubbleChat.dart';
import 'package:home/widget/HotTalk/HomeAvatar.dart';
import 'package:http/http.dart' as http;

class test extends StatelessWidget {
  const test({super.key});

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
        child: FutureBuilder<List<Map<String, dynamic>>?>(
          future: hotTalk(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                final hotTalkData = snapshot.data!;

                return Column(
                  children: hotTalkData.map((data) {
                    final author = data['author'] as Map<String, dynamic>;
                    final badge = author['badge'] as Map<String, dynamic>?;
                    String userClass = badge?['shortName'] ?? '오류';
                    print("Author: $author");
                    print("Badge: $badge");
                    print("User Class: $userClass");

                    return Column(children: [
                      Row(
                        children: [
                          HomeAvatar(
                            imagePath:
                                'assets/icon/avatar/Property 1=Default.svg',
                            userClass: userClass,
                          ),
                          BubbleChat(),
                        ],
                      ),
                      SizedBox(height: 15),
                    ]);
                  }).toList(),
                );
              } else if (snapshot.hasError) {
                return Text('오류: ${snapshot.error}');
              }
            }

            // 로딩 등 다른 경우 처리
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
