import 'package:apply_pagenation/core/Assets/Assets.dart';
import 'package:apply_pagenation/core/Constant/size_screen.dart';
import 'package:flutter/material.dart';

class whatsUpIcon extends StatelessWidget {
  const whatsUpIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.Logo,
          width: WhatssAppIcon,
        ),
        Text(
          "Whats up",
          style: Theme.of(context).textTheme.titleMedium!,
        )
      ],
    );
  }
}
