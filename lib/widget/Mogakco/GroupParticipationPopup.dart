// 그룹 참여 팝업 창
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Button/validateButton.dart';

class GroupParticipationPopup extends StatefulWidget {
  @override
  _GroupParticipationPopupState createState() =>
      _GroupParticipationPopupState();
}

class _GroupParticipationPopupState extends State<GroupParticipationPopup> {
  int count = 0; // count가 1로 바뀌면 참여 완료 팝업으로 변경

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  if (count == 0)
                    Text(
                      '그룹에 참여하시겠습니까?',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.neutral_60),
                    ),
                  if (count == 1)
                    Column(
                      children: [
                        SvgPicture.asset(
                          'assets/icon/icon_70/woman-a.svg',
                          width: 90,
                          height: 90,
                          // You can adjust the width and height accordingly
                        ),
                        SizedBox(height: 16),
                        Text(
                          '그룹에 참여가 완료되었습니다!',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.neutral_60),
                        ),
                      ],
                    ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      if (count == 0)
                        ...[
                          SizedBox(
                            height: 30,
                            width: 120,
                            child: ElevatedButton(
                              onPressed: () {
                                // 취소 버튼 동작
                                print('취소하기');
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.background_blue,
                                onPrimary: AppColors.primary_80,
                                side:
                                    BorderSide(color: AppColors.primary_80),
                                minimumSize: Size(60, 30),
                              ),
                              child: Text('취소하기'),
                            ),
                          ),
                          SizedBox(width: 16),
                          SizedBox(
                            height: 30,
                            width: 120,
                            child: ElevatedButton(
                              onPressed: () {
                                // 참여 버튼 동작
                                print('참여하기');
                                setState(() {
                                  count = 1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.primary_80,
                                onPrimary: Colors.white,
                                side:
                                    BorderSide(color: AppColors.primary_80),
                                minimumSize: Size(60, 30),
                              ),
                              child: Text('참여하기'),
                            ),
                          ),
                        ],
                      if (count == 1)
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 30,
                          child: ValidateButton(
                            available: true,
                            text: "확인",
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:home/styles/app_colors.dart';
// import 'package:home/widget/Button/validateButton.dart';

// class GroupParticipationPopup extends StatefulWidget {
//   @override
//   _GroupParticipationPopupState createState() => _GroupParticipationPopupState();
// }

// class _GroupParticipationPopupState extends State<GroupParticipationPopup> {
//   int count = 0; // count가 1로 바뀌면 참여 완료 팝업으로 변경

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           GestureDetector(
//             onTap: () {
//               setState(() {});
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 children: [
//                   Text(
//                     count == 0
//                         ? '그룹에 참여하시겠습니까?'
//                         : '그룹에 참여가 완료되었습니다!',
//                     style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: AppColors.neutral_60),
//                   ),
//                   SizedBox(height: 24),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       if (count == 0)
//                         ...[
//                           SizedBox(
//                             height: 30,
//                             width: 120,
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 // 취소 버튼 동작
//                                 print('취소하기');
//                                 Navigator.pop(context);
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 primary: AppColors.background_blue,
//                                 onPrimary: AppColors.primary_80,
//                                 side: BorderSide(color: AppColors.primary_80),
//                                 minimumSize: Size(60, 30),
//                               ),
//                               child: Text('취소하기'),
//                             ),
//                           ),
//                           SizedBox(width: 16),
//                           SizedBox(
//                             height: 30,
//                             width: 120,
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 // 참여 버튼 동작
//                                 print('참여하기');
//                                 setState(() {
//                                   count = 1;
//                                 });
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 primary: AppColors.primary_80,
//                                 onPrimary: Colors.white,
//                                 side: BorderSide(color: AppColors.primary_80),
//                                 minimumSize: Size(60, 30),
//                               ),
//                               child: Text('참여하기'),
//                             ),
//                           ),
//                         ],
//                       if (count == 1)
//                         Container(
//                           width: MediaQuery.of(context).size.width * 0.5,
//                           height: 30,
//                           child: ValidateButton(
//                             available: true,
//                             text: "확인",
//                             onPressed: () => Navigator.of(context).pop(),
//                           ),
//                         ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }