import 'package:Chat_app/core/Components/Cust_text.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class inputForm extends StatelessWidget {
  const inputForm({
    super.key,
    required this.labelText,
    required this.hintText,
    this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.inputype,
  });

  final String labelText, hintText;
  final bool? obscureText;
  final TextEditingController? controller;
  final Widget? prefixIcon, suffixIcon;
  final String? Function(String?)? validator;
  final TextInputType? inputype;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 5.r),
            child: Cust_text(
              TeStyle: ThemeText(context)
                  .titleMedium!
                  .copyWith(color: Colors.black.withOpacity(0.7)),
              TextT: labelText,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 44.h,
            decoration: BoxDecoration(
              color: AppColors.BLackTextColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: TextFormField(
              controller: controller,
              obscureText: obscureText ?? false,
              keyboardType: inputype ?? TextInputType.text,
              validator: validator,
              decoration: InputDecoration(
                focusColor: AppColors.PrimaryContainerColor,
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
