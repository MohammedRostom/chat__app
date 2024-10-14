import 'package:apply_pagenation/core/Constant/size_screen.dart';
import 'package:flutter/material.dart';

class screenBodySize extends StatelessWidget {
  screenBodySize({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MarginSideScreen,
          right: MarginSideScreen,
          top: MarginTopOrBottomScreen),
      child: Container(
          height: HighOfScreen(context),
          width: WidthOfScreen(context),
          child: widget),
    );
  }
}
