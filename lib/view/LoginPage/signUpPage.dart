import 'package:flutter/material.dart';
import 'package:home/widget/Button/validateButton.dart';
import 'package:home/widget/input/input.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_svg/svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String name = "";
  String email = "";
  String password = "";
  String phoneNumber = "";
  bool canSignUp = false;

  void validateSignUp() {
    if (email.isNotEmpty && password.isNotEmpty && name.isNotEmpty && phoneNumber.isNotEmpty) {
      setState(() {
        canSignUp = canSignUp||true;
      });
    } else {
      setState(() {
        canSignUp = canSignUp&&false;
      });
    }
  }

  Future<bool> SignUp(String name, String email, String password, String phoneNumber) async {
    if (canSignUp) {
      final Uri apiUri = Uri.parse('https://dev.sniperfactory.com/api/auth/signup');
      final response = await http.post(apiUri, headers: {"content-type":"application/json"},
          body: json.encode({"name":name, "email": email, "password":password,"phone":phoneNumber}));
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        if (responseData['status']) {
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
              title: Text("회원가입 하기"),
            ),
            SizedBox(height: 10),
            Text("*표시는 필수입력항목 입니다.",
            style: TextStyle(
                color: Colors.red, fontSize: 8),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child:Text("이름"),
            ),
            Input(
              placeholder: "이름을 입력해주세요.",
              isPassword: false,
              onWarning: (input) {
                if (input!.isNotEmpty && input.contains('\s')) {
                  canSignUp=false;
                  return "공백넣지뫄!!!";
                }
                canSignUp=true;
                return null;
              },
              onChanged: (input) {
                name = input;
                validateSignUp();
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child:Text("이메일"),
            ),
            Input(
              placeholder: "이메일을 입력해주세요.",
              isPassword: false,
              onWarning: (input) {
                if (input!.isNotEmpty && !RegExp(r"^[a-zA-Z0-9.!#$%&'*/+\-=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(input)) {
                  canSignUp=false;
                  return "이메일 형식 맞춰!!!";
                }
                canSignUp=true;
                return null;
              },
              onChanged: (input) {
                email = input;
                validateSignUp();
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child:Text("비밀번호"),
            ),
            Input(
              placeholder: "비밀번호를 입력해주세요.",
              isPassword: false,
              onWarning: (input) {
                if (input != null){
                  if (input.length<8) {
                    canSignUp=false;
                    return "8글자 넘으라고!!!";
                  }
                }
                canSignUp=true;
                return null;
              },
              onChanged: (input) {
                password = input;
                validateSignUp();
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child:Text("휴대전화"),
            ),
            Input(
              placeholder: "휴대폰 번호를 입력해주세요.",
              isPassword: false,
              onWarning: (input) {
                if (input!.isNotEmpty && !RegExp(r"^[0-9]*").hasMatch(input)) {
                  return "숫자말고 넣지마!!!";
                }
                return null;
              },
              onChanged: (input) {
                phoneNumber = input;
                validateSignUp();
              },
            ),
            Spacer(),
            ValidateButton(
              available: canSignUp,
              text: "회원가입 하기",
              onPressed: () {
                SignUp(name, email, password, phoneNumber).then(
                      (value) {
                    if (value == true) {
                      //성공!
                      Navigator.of(context).pushReplacementNamed("/SignUpComplete");
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
