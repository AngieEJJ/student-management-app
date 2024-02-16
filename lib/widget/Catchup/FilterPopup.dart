// 정렬 버튼 팝업창
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Function() onPressed;

  CustomButton({
    required this.text,
    required this.onPressed,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 16, bottom: 40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: isClicked ? AppColors.background_blue : AppColors.background_5,
          onPrimary: isClicked ? AppColors.primary_80 : AppColors.neutral_60,
          side: isClicked ? BorderSide(color: AppColors.primary_80 ) : BorderSide.none,
        ),
        onPressed: () {
          setState(() {
            isClicked = !isClicked;
          });
          widget.onPressed();
        },
        child: Text(widget.text),
      ),
    );
  }
}

class FilterPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '필터',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      content: Container(
        constraints: BoxConstraints(
          maxHeight: 400,
          minWidth: 50,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              // 날짜
              Text(
                '날짜',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: AppColors.neutral_60
                ),
              ),
              // 날짜 관련 버튼
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomButton(
                    text: '전체',
                    onPressed: () {
                    },
                  ),
                  CustomButton(
                    text: '오름차순',
                    onPressed: () {
                    },
                  ),
                  CustomButton(
                    text: '내림차순',
                    onPressed: () {
                    },
                  ),
                ],
              ),
        
              // 이름
              Text(
                '이름',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: AppColors.neutral_60
                ),
              ),
              // 이름 관련 버튼
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomButton(
                    text: '전체',
                    onPressed: () {
                    },
                  ),
                  CustomButton(
                    text: '오름차순',
                    onPressed: () {
                    },
                  ),
                  CustomButton(
                    text: '내림차순',
                    onPressed: () {
                    },
                  ),
                ],
              ),
        
              // 좋아요
              Text(
                '좋아요',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: AppColors.neutral_60
                ),
              ),
              // 좋아요 관련 버튼
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomButton(
                    text: '많은 순',
                    onPressed: () {
                    },
                  ),
                  CustomButton(
                    text: '적은 순',
                    onPressed: () {
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 30,
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        // 초기화 버튼 동작
                        print('초기화');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.background_blue,
                        onPrimary: AppColors.primary_80,
                        side: BorderSide(color: AppColors.primary_80),
                        minimumSize: Size(60, 30),
                      ),
                      child: Text('초기화'),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        // 확인 버튼 동작
                        print('확인');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.primary_80,
                        onPrimary: Colors.white,
                        side: BorderSide(color: AppColors.primary_80),
                        minimumSize: Size(60, 30),
                      ),
                      child: Text('확인'),
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    )
    );
  }
}


// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Delete Popup Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (context) {
//                 return FilterPopup();
//               },
//             );
//           },
//           child: Text('Show Popup'),
//         ),
//       ),
//     ),
//   ));
// }
