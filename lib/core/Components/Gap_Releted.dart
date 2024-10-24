import 'package:Chat_app/core/Constant/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gap_Releted extends StatelessWidget {
  const Gap_Releted({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Gap_Releted_elements,
      width: 6.w,
    );
  }
}
