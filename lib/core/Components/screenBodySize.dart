import 'package:apply_pagenation/core/Constant/constants.dart';
import 'package:flutter/material.dart';

class screenBodySize extends StatelessWidget {
  screenBodySize({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: HighOfScreen(context),
        width: WidthOfScreen(context),
        child: widget);
  }
}
