// ignore: file_names

import 'package:Chat_app/core/Components/inputform.dart';
import 'package:Chat_app/core/Constant/Assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class Form_section2 extends StatelessWidget {
  const Form_section2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 8,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    children: List.generate(
                  4,
                  (index) => inputForm(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                          color: Colors.black.withOpacity(0.3),
                          index == 0
                              ? Assets.email
                              : index == 1
                                  ? Assets.lock
                                  : index == 2
                                      ? Assets.lock
                                      : index == 3
                                          ? Assets.phone
                                          : Assets.IconCommPath),
                    ),
                    labelText: index == 0
                        ? "Email "
                        : index == 1
                            ? "Password"
                            : index == 2
                                ? "Re_Password"
                                : "Phone",
                    hintText: index == 1
                        ? "*******************"
                        : index == 2
                            ? "*******************"
                            : index == 3
                                ? "+20123456789"
                                : "Emial456@gmail.com",
                    obscureText: index == 1 && index == 2 ? true : false,
                    suffixIcon: index == 1 || index == 2
                        ? Container(
                            padding: EdgeInsets.all(4.r),
                            child: InkWell(
                                child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                Assets.eye,
                                color: Colors.black.withOpacity(0.3),
                              ),
                            )),
                          )
                        : null,
                  ),
                )),
              ),
            ),
          ],
        ));
  }
}
