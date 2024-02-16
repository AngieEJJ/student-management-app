// 모각코의 그룹만들기의 하단 카드
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Common/DashedLine.dart';
import 'package:home/widget/Mogakco/RecruitNumPopup.dart';
import 'package:home/widget/Mogakco/RecruitStatusPopup.dart';

class PostOtionCard extends StatefulWidget {
  PostOtionCard({Key? key}) : super(key: key);

  @override
  _PostCardOtionState createState() => _PostCardOtionState();
}

class _PostCardOtionState extends State<PostOtionCard> {
  bool showDetails1 = false;
  bool showDetails2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.97,
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: AppColors.neutral_30, width: 0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildRowWithDottedLine('모집인원 1', showDetails1 ? '5명' : 'next 1', 1),
          SizedBox(height: 20), // 간격 추가
          _buildRowWithDottedLine('모집인원 2', showDetails2 ? '10명' : 'next 2', 2),
        ],
      ),
    );
  }

  Widget _buildRowWithDottedLine(String title, String value, int option) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                if (option == 1) {
                  _showRecruitNumPopup();
                } else if (option == 2) {
                  _showRecruitStatusPopup();
                }
              },
              child: option == 1
                  ? showDetails1
                      ? Text(
                          value,
                          style: TextStyle(
                              color: AppColors.primary_100, fontWeight: FontWeight.bold),
                        )
                        : Icon(Icons.navigate_next, color: AppColors.neutral_60, size: 20)
                  : showDetails2
                      ? Text(
                          value,
                          style: TextStyle(
                              color: AppColors.primary_100, fontWeight: FontWeight.bold),
                        )
                      : Icon(Icons.navigate_next, color: AppColors.neutral_60, size: 20)
            ),
          ],
        ),
        SizedBox(height: 12),
        DashedLine()
      ],
    );
  }

  void _showRecruitNumPopup() {
    showDialog(
      context: context,
      builder: (context) {
        return RecruitNumPopup();
      },
    );
  }

  void _showRecruitStatusPopup() {
    showDialog(
      context: context,
      builder: (context) {
        return RecruitStatusPopup();
      },
    );
  }
}


// class PostOtionCard extends StatefulWidget {
//   PostOtionCard({Key? key}) : super(key: key);

//   @override
//   _PostCardOtionState createState() => _PostCardOtionState();
// }

// class _PostCardOtionState extends State<PostOtionCard> {
//   bool showDetails = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 150,
//       width: MediaQuery.of(context).size.width * 0.97,
//       padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
//       margin: EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8.0),
//         border: Border.all(color: AppColors.neutral_30, width: 0.2),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           _buildRowWithDottedLine('모집인원', showDetails ? '5명' : 'next',),
//           SizedBox(height: 20), // 간격 추가
//           _buildRowWithDottedLine('모집상태', showDetails ? '모집중' : 'next'),
//         ],
//       ),
//     );
//   }

//   Widget _buildRowWithDottedLine(String title, String value) {
//     return Column(
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               title,
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   showDetails = !showDetails;
//                 });
//               },
//               child: showDetails
//                   ? Text(
//                       value,
//                       style: TextStyle(
//                           color: AppColors.primary_100, fontWeight: FontWeight.bold),
//                     )
//                   : Icon(Icons.navigate_next, color: AppColors.neutral_60, size: 20),
//             ),
//           ],
//         ),
//         SizedBox(height: 12),
//         DashedLine()
//       ],
//     );
//   }
