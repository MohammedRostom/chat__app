// ignore: file_names

import 'package:Chat_app/core/Components/Gap_Releted.dart';
import 'package:Chat_app/core/Constant/Assets.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:Chat_app/core/comm_methods/ComMethods.dart';
import 'package:Chat_app/features/AddStory/peresentaion/view/addstory/addstory.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/login/loginscreen.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/layout/widgets/tabPages.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/status/status_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class Action_btn extends StatelessWidget {
  const Action_btn({
    super.key,
    required this.controller,
  });
  final TabController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            NavgateTo(context, Widget: addstory(), time: 0);
          },
          child: controller.index == 1
              ? CircleAvatar(
                  backgroundColor: AppColors.LightColors,
                  radius: 24.r,
                  child: Icon(
                    Icons.mode_outlined,
                    color: AppColors.PrimaryContainerColor,
                    size: 24.r,
                  ))
              : Text(""),
        ),
        Gap_Releted(),
        CircleAvatar(
            backgroundColor: AppColors.PrimaryContainerColor,
            radius: 32.r,
            child: SvgPicture.asset(
              controller.index == 2
                  ? Assets.phone
                  : controller.index == 1
                      ? Assets.eye
                      : Assets.Message,
              width: 32,
              color: AppColors.WhiteColor,
            ))
      ],
    );
  }
}
