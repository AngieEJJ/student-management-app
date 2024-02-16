import 'package:flutter/material.dart';

class WhiteTitleBar extends StatelessWidget {
  final String Title;

  const WhiteTitleBar({
    Key? key,
    required this.Title,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: GestureDetector(child: const Icon(Icons.navigate_before, color: Colors.white),
          onTap: (){
            Navigator.of(context).pop();
          }),
      title: Text(
        this.Title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      trailing: Text('              ')// title 정렬을 맞추기 위해 추가
    );
  }
}