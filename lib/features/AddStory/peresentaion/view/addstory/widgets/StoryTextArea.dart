// ignore: file_names

import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoryTextArea extends StatelessWidget {
  const StoryTextArea({
    super.key,
    required FocusNode focusNode,
    required TextEditingController controller,
  })  : _focusNode = focusNode,
        _controller = controller;

  final FocusNode _focusNode;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _focusNode,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 32.sp, color: Colors.white),
      controller: _controller,
      maxLines: null,
      cursorColor: AppColors.PrimaryContainerColor,
      decoration: InputDecoration(
        hintText: "Type a status",
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
        border: InputBorder.none,
      ),
    );
  }
}
