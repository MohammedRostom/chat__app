// ignore: file_names

import 'package:Chat_app/core/Components/Cust_text.dart';
import 'package:Chat_app/core/Components/Gap_Releted.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/signup/signupscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/comm_methods/ComMethods.dart';

// ignore: camel_case_types
class Registerhere_section extends StatelessWidget {
  const Registerhere_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Cust_text(
                TeStyle: ThemeText(context).titleSmall!,
                TextT: "Don’t have an account?"),
            Gap_Releted(),
            Container(
              padding: EdgeInsets.all(4.r),
              child: GestureDetector(
                onTap: () => NavgateTo(context, Widget: Signupscreen()),
                child: Cust_text(
                    TeStyle: ThemeText(context)
                        .titleMedium!
                        .copyWith(color: AppColors.PrimaryContainerColor),
                    TextT: "Register Here?"),
              ),
            ),
          ],
        ));
  }
}
