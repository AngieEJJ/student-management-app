import 'package:flutter/material.dart';
import 'package:home/widget/Button/validateButton.dart';
import 'package:home/widget/input/input.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_svg/svg.dart';

class PwFindPage extends StatefulWidget {
  const PwFindPage({Key? key}) : super(key: key);

  @override
  _PwFindPageState createState() => _PwFindPageState();
}

class _PwFindPageState extends State<PwFindPage> {
  String email = "";
  bool canEmailSend = false;

  void validatePwFind() {
    if (email.isNotEmpty) {
      setState(() {
        canEmailSend = true;
      });
    } else {
      setState(() {
        canEmailSend= false;
      });
    }
  }

  Future<bool> emailSendPw(String email) async {
    if (email.isNotEmpty) {
      final Uri apiUri = Uri.parse('https://dev.sniperfactory.com/api/auth/forgot-password');
      final response = await http.post(apiUri, body: {'email': email});
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        if (responseData['status']) {
          print(responseData);
          return true;

        }
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            AppBar(
              leading:GestureDetector(
                  child : Icon(Icons.navigate_before),
              onTap: () {Navigator.pop(context);
                    },
              ),
              title: Text("비밀번호 찾기"),
            ),
            SizedBox(height: 40,),
            Center(
              child : Text(
                "기존에 가입하신 이메일을 입력하시면,\n   새로운 비밀번호를 보내드립니다.",
                style: TextStyle(),
                ),
            ),
            SizedBox(height: 40,),
            Align(
              alignment: Alignment.bottomLeft,
              child:Text("이메일"),
            ),
            Input(
              placeholder: "이메일을 입력해주세요.",
              isPassword: false,
              onWarning: (input) {
                return null;
              },
              onChanged: (input) {
                email = input;
                canEmailSend=true;
              },
            ),
            Spacer(),
            ValidateButton(
              available: canEmailSend,
              text: "보내기",
              onPressed: () {
                emailSendPw(email).then(
                      (value) {
                    if (value == true) {
                      //성공!
                      print("성공");
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          alignment: Alignment.center,
                          icon: SvgPicture.asset(
                              "assets/icon/icon_20/Send.svg"),
                          title: const Text("새로운 비밀번호를 보냈습니다!"),
                          content: const Text("이메일을 확인해주세요."),
                          actions: <Widget>[
                            ValidateButton(
                              available: true,
                              text: "확인하기",
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
