import 'package:Chat_app/core/Constant/screen_size.dart';
import 'package:flutter/material.dart';

class screenBodySize extends StatelessWidget {
  screenBodySize({
    super.key,
    required this.widget,
    this.bottomMargin,
  });
  final Widget widget;
  final double? bottomMargin;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MarginSideScreen,
          right: MarginSideScreen,
          top: MarginTopOrBottomScreen,
          bottom: bottomMargin ?? 0),
      child: Container(
          height: HighOfScreen(context),
          width: WidthOfScreen(context),
          child: widget),
    );
  }
}
