// ignore: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class Action_btn extends StatelessWidget {
  const Action_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35.r,
      child: Icon(
        Icons.chat,
        size: 35,
      ),
    );
  }
}
