//  모집 상태 팝업 창 위젯 추가
// 선택된 값은 _selectedValue에 저장, 버튼을 누르면 선택된 값이 출력
import 'package:flutter/material.dart';

class RecruitStatusPopup extends StatefulWidget {
  @override
  _RecruitStatusPopupState createState() => _RecruitStatusPopupState();
}

class _RecruitStatusPopupState extends State<RecruitStatusPopup> {
  int? _selectedValue = null;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero, // Remove default content padding
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '모집 인원',
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
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Container(
            width: double.infinity, // Set the width to match the AlertDialog
            child: RadioListTile<int>(
              title: Text('모집중'),
              value: 0,
              groupValue: _selectedValue ?? 0,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                  print('Selected Value: $_selectedValue');
                });
              },
            ),
          ),
          Container(
            width: double.infinity, // Set the width to match the AlertDialog
            child: RadioListTile<int>(
              title: Text('작성중'),
              value: 1,
              groupValue: _selectedValue ?? 0,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                  print('Selected Value: $_selectedValue');
                });
              },
            ),
          ),
          Container(
            width: double.infinity, // Set the width to match the AlertDialog
            child: RadioListTile<int>(
              title: Text('모집 완료'),
              value: 2,
              groupValue: _selectedValue ?? 0,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                  print('Selected Value: $_selectedValue');
                });
              },
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
