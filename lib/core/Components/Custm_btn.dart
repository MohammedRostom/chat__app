import 'package:Chat_app/core/Constant/fonts_size.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Custm_btn extends StatelessWidget {
  const Custm_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: ThemeColor(context).primaryContainer),
      height: 50.h,
      child: Text(
        "Login",
        style: ThemeText(context).titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: FontSize.TitleSize,
            color: AppColors.WhiteColor),
      ),
    );
  }
}
