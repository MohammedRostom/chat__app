import 'package:Chat_app/core/Components/Gap_NotReleted.dart';
import 'package:Chat_app/core/Constant/Assets.dart';
import 'package:Chat_app/core/Constant/fonts_size.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Hero_section2 extends StatelessWidget {
  const Hero_section2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 6,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                constraints: BoxConstraints(maxHeight: 120.h, maxWidth: 120.w),
                child: Image.asset(Assets.Logo),
              ),
              Gap_NotReleted(),
              Gap_NotReleted(),
              Container(
                width: double.maxFinite,
                child: Text(
                  "Create new Account",
                  textAlign: TextAlign.left,
                  style: ThemeText(context).titleLarge!.copyWith(
                        fontSize: FontSize.H3,
                      ),
                ),
              ),
            ],
          ),
        ));
  }
}
