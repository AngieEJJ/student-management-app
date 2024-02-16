import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Common/bigHorizontalUserData.dart';
import 'package:home/widget/MyPage/Popup/DeleteIconPopup.dart';

class EditableComment extends StatefulWidget {
  EditableComment({super.key});

  @override
  State<EditableComment> createState() => _EditableCommentState();
}

class _EditableCommentState extends State<EditableComment> {
  bool isLongPressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          BigUserData(
              imagePath: 'assets/icon/avatar/Property 1=Default.svg',
              userClass: '개발자/1기',
              userName: '케빈',
              userType: '수료생'),
          SizedBox(width: 30),
          if (isLongPressed)
            Row(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  child: IconButton(
                    splashRadius: 0.1,
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icon/icon_30/editable.svg'),
                  ),
                ),
                DeleteIconPopup(
                  title: '내 톡을 삭제하시겠습니까?',
                  subtitle: '한번 삭제하면 복구가 불가능합니다.',
                  buttonname1: '취소하기',
                  buttonname2: '등록하기',
                ),
              ],
            ),
        ],
      ),
      SizedBox(height: 10),
      GestureDetector(
        onLongPress: () {
          setState(() {
            isLongPressed = !isLongPressed;
            print('성공');
          });
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          height: 80,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
              border: Border.all(
                color:
                    isLongPressed ? AppColors.primary_20 : Colors.transparent,
              ),
              color: isLongPressed ? AppColors.primary_10 : AppColors.neutral_5,
              borderRadius: BorderRadius.circular(10)),
          child: const Text('저에게 말씀해주세요! 저 그 강의 다 들었습니다. 뭐든 말씀해주시면 답변 드리겠습니다'),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            '1분전',
            style: TextStyle(fontSize: 13, color: AppColors.neutral_40),
          ),
          const SizedBox(width: 13),
          SvgPicture.asset('assets/icon/icon_20/Property 1=Like.svg',
              height: 18),
          const Text(
            '3',
            style: TextStyle(fontSize: 14, color: AppColors.primary_80),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          )
        ],
      ),
    ]);
  }
}
