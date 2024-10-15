import 'package:Chat_app/core/Components/Gap_NotReleted.dart';
import 'package:Chat_app/core/Components/Gap_Releted.dart';
import 'package:Chat_app/core/Components/inputform.dart';
import 'package:Chat_app/core/Components/screenBodySize.dart';
import 'package:Chat_app/core/Constant/Assets.dart';
import 'package:Chat_app/core/Constant/Icons_size.dart';
import 'package:Chat_app/core/Constant/fonts_size.dart';
import 'package:Chat_app/core/Constant/screen_size.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: screenBodySize(
          bottomMargin: 20.r,
          widget: Column(
            children: [
              Expanded(
                  flex: 7,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          constraints:
                              BoxConstraints(maxHeight: 120.h, maxWidth: 120.w),
                          child: Image.asset(Assets.Logo),
                        ),
                        Gap_NotReleted(),
                        Gap_NotReleted(),
                        Container(
                          width: double.maxFinite,
                          child: Text(
                            "Login to your Account",
                            textAlign: TextAlign.left,
                            style: ThemeText(context).titleLarge!.copyWith(
                                  fontSize: FontSize.H3,
                                ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Gap_Releted(),
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                              children: List.generate(
                            2,
                            (index) => inputForm(
                              prefixIcon: Icon(index == 0
                                  ? Icons.email
                                  : index == 1
                                      ? Icons.lock
                                      : null),
                              labelText: index == 0
                                  ? "Email "
                                  : index == 1
                                      ? "Password"
                                      : " ",
                              hintText: index == 1
                                  ? "*******************"
                                  : "Emial456@gmail.com",
                              obscureText: index == 1 ? true : false,
                              suffixIcon: index == 1
                                  ? InkWell(
                                      child:
                                          Icon(Icons.remove_red_eye_outlined))
                                  : null,
                            ),
                          )),
                        ),
                      ),
                    ],
                  )),
              Gap_Releted(),
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
                      style: ThemeText(context).titleMedium,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: ThemeColor(context).primaryContainer),
                    height: 44.h,
                  )),
            ],
          )),
    );
  }
}
