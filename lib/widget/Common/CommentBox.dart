import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(15),
            filled: true,
            fillColor: AppColors.neutral_5,
            hintText: '댓글을 작성해주세요.',
            hintStyle: const TextStyle(color: AppColors.neutral_30),
            suffixIconConstraints:
                const BoxConstraints(minHeight: 35, minWidth: 35),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SvgPicture.asset(
                'assets/icon/icon_30/Send.svg',
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
          ),
        ),
      ),
    );
  }
}
