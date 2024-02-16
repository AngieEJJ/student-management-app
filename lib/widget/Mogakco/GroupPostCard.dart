// 모각코의 그룹만들기 포스트 작성 카드
// 태그 값은 2개로 한정. 띄어쓰기 없이 '#태그#태그'로 값이 들어가야 함
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';

class PostCard extends StatefulWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();
  final TextEditingController tagController = TextEditingController(); 
  final List<String> tags = [];
  final String tagValue = ''; // API 전달 값. #태그내용#태그내용

  PostCard({Key? key}) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // 제목 입력란
                TextField(
                  controller: widget.titleController,
                  decoration: InputDecoration(
                    hintText: '제목을 입력해주세요.',
                    hintStyle: TextStyle(color: AppColors.neutral_40),
                    // Remove the underline border
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.neutral_40,
                  ),
                ),
                // 내용 입력란
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Column(
                    children: [
                      TextField(
                        controller: widget.contentController,
                          keyboardType: TextInputType.multiline, // 키보드 입력을 여러 줄로 허용
                          maxLines: 7, 
                        decoration: InputDecoration(
                          hintText: '내용을 입력해 주세요.',
                          hintStyle: TextStyle(color: AppColors.neutral_40),
                          // Remove the underline border
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.neutral_40,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // 태그 입력란
          IntrinsicWidth( // Container를 text에 따라 가로 크기를 조정
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.neutral_10,
              ),
              child: Row(
                children: [
                  Text('#', style: TextStyle(fontSize: 14, color: AppColors.neutral_50),),
                  Text('#', style: TextStyle(fontSize: 14, color: AppColors.neutral_50),),
          //      TextField(
          //           controller: widget.tagController,
          //           onSubmitted: (value) {
          //             setState(() {
          //               widget.tags.add(value);
          //               widget.tagController.clear();
          //             });
          //           },
          //           decoration: InputDecoration(
          //             hintText: '태그 입력',
          //             hintStyle: TextStyle(color: AppColors.neutral_40,fontSize: 14,),
          //             focusedBorder: InputBorder.none,
          //             enabledBorder: InputBorder.none,
          //           ),
          //           style: TextStyle(
          //             fontSize: 16,
          //             color: AppColors.neutral_40,
          //           ),
          //         ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

          // Wrap(
          //   spacing: 8,
          //   runSpacing: 4,
          //   children: widget.tags.map((tag) {
          //     return Chip(
          //       label: Text(
          //         tag,
          //         style: TextStyle(
          //           color: AppColors.neutral_60,
          //           fontSize: 12,
          //         ),
          //       ),
          //       backgroundColor: AppColors.background_5,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10.0),
          //       ),
          //     );
          //   }).toList(),
          // ),