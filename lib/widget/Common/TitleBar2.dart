import 'package:flutter/material.dart';

class TitleBar2 extends StatelessWidget {
  final String Title;

  const TitleBar2({
    Key? key,
    required this.Title,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: GestureDetector(child: const Icon(Icons.navigate_before),
      onTap: (){
        Navigator.of(context).pop();
      }),
      title: Text(
        this.Title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
      trailing: Text('  ')// title 정렬을 맞추기 위해 추가
    );
  }
}