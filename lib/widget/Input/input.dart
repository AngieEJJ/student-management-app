import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Input extends StatefulWidget {
  const Input({super.key, required this.placeholder, required this.isPassword, required this.onChanged, required this.onWarning});
  final String placeholder; //디폴트 글씨들
  final bool isPassword;    //해당 TextFormField를 비밀번호/일반input으로 인식할지말지
  final String? Function(String?) onWarning;    //칸이 비거나, 제대로 된 형식이 아니면 TextFormField가 빨간색으로 변신!
  final void Function(String) onChanged;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final TextEditingController _controller = TextEditingController();
  final textFieldFocusNode = FocusNode();
  late bool _obscured;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _obscured = widget.isPassword;
  }

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus = false;     // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText : _obscured,
      controller: _controller,
      focusNode: textFieldFocusNode,
      onChanged: (val) => widget.onChanged(val),
      validator: (val) => widget.onWarning(val),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: widget.placeholder,
        suffixIcon :
            widget.isPassword
                ?GestureDetector(
                  onTap : _toggleObscured,
                  child : _obscured
                  ? SvgPicture.asset("assets/icon/icon_20/_CantSee.svg")
                    : SvgPicture.asset("assets/icon/icon_20/_See.svg"),
              )
                : null
    )
  );
  }
}