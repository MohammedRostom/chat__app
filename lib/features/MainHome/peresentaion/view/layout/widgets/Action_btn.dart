// ignore: file_names

import 'package:Chat_app/core/Constant/Assets.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class Action_btn extends StatelessWidget {
  const Action_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: AppColors.PrimaryContainerColor,
        radius: 32.r,
        child: SvgPicture.asset(
          Assets.Message,
          width: 32,
          color: AppColors.WhiteColor,
        ));
  }
}
