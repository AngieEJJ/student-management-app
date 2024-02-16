import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: '내용 검색하기',
            hintStyle: const TextStyle(color: AppColors.neutral_10),
            prefixIcon: Icon(
              Icons.search,
              size: 25,
              color: Colors.grey.shade300,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.grey.shade300), // 포커스 시에도 동일한 스타일 유지
            ),

            contentPadding:
                const EdgeInsets.symmetric(vertical: 0), // 힌트 텍스트 위아래 간격 제거
          ),
        ),
      ),
    );
  }
}
