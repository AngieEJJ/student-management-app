import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:http/http.dart' as http;

class FloatingButtonPopup extends StatelessWidget {
  const FloatingButtonPopup({super.key});

  void _showCustomDialog(BuildContext context) {
    var controller = TextEditingController();

    /// 일단 http 요청을 보내기 위해서 dio 를 사용하신다고 하셨는데,
    /// 지금 보니 dio 디펜던시를 추가하지않고 http 디펜던시가 추가되어있어서
    /// http 기준으로 한번해볼게요.

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
          backgroundColor: const Color.fromARGB(0, 98, 93, 93),
          child: Container(
            margin: const EdgeInsets.only(top: 60),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: controller,
                  maxLines: 10,
                  decoration: InputDecoration(
                    hintText: '내용을 입력해주세요.',
                    hintStyle:
                        TextStyle(fontSize: 15, color: AppColors.neutral_20),
                    contentPadding: EdgeInsets.fromLTRB(12, 30, 0, 0),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: const Size(55, 35),
                      ),
                      child: const Text(
                        '취소하기',
                        style: TextStyle(color: AppColors.primary_50),
                      )),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                        /// 여기가 등록하기 버튼을 누르는곳이고
                        /// 탭을 했을때 등록을 해야되니까

                        String text = controller.text;
                        print('입력된 텍스트: $text');

                        // api 호출할때 필요한 데이터가 뭔지 잘모르니 임의로 설명을 드릴게요
                        // 만약에 입력된 텍스트를 request body 에 담아서 보낸다고 생각을 해보면
                        // 우선 데이터를 api 가 잘 받을 수 있도록 서로 합의된 형태로 가공을 해줘요
                        // 예를들어서 json 형식으로 보낸다고 하고 key 는 'text' value 는 입력된 텍스트라고 해봅시다
                        // http 라이브러리에서 body 값은 String 이나 List 나 Map이 들어올 수 있다고 하는데
                        // 아마도 Map 으로 보내면 json encoding이 자동으로 될것같아요 - 자동으로 안되는것같네요

                        // 그럼 데이터를 만들어보면
                        final requestBody = {'content': 'dummy content'};

                        /// 먼저 요청을 보내기위한 클라이언트를 정의를 해봅시다
                        /// Uri 를 넣어줬고, body 데이터도 넣어줬고
                        /// 비동기 처리 로직까지 잘 되었죠 아래에.

                        print("::  요청 데이터를 만듬 ::");
                        print("요청 데이터 :: ${requestBody.toString()}");

                        print(":: Post 방식으로 서버에 요청을 보냄 ::");
                        http
                            .post(
                                Uri.parse(
                                    'https://dev.sniperfactory.com/api/talk'),
                                body: jsonEncode(requestBody))
                            .then((value) {
                          // 비동기로 처리합니다

                          // 결과가 잘 왔으면 value 에 데이터가 담겨 올거에요
                          // 아마 읽어올 데이터가 있으면 보통 body에 있겠죠?
                          // 이건 백엔드와 데이터 처리를 어떻게할지 미리 상의를 하셔야해요
                          print(":: 서버로부터 받은 응답 :: ");
                          print(
                              "응답상태코드 : ${value.statusCode}    응답 body : ${value.body}");
                        }).onError((error, stackTrace) {
                          // 만약에 응답 과정에서 에러가 발생햇을경우
                          // 에러 내용과 stackTrace 가 찍히게되요 이것도 출력한번 해볼게요
                          print(
                              'error : ${error.toString()}\nstackTrace : ${stackTrace.toString()}');
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary_90,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: const Size(55, 35),
                      ),
                      child: const Text(
                        '등록하기',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ]),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.primary_80,
      onPressed: () {
        _showCustomDialog(context);
      },
      child: SvgPicture.asset('assets/icon/icon_30/Community.svg',
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
    );
  }
}
