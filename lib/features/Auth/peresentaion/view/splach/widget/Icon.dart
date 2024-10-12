import 'package:apply_pagenation/core/Assets/Assets.dart';
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
          width: 150,
        ),
        const Text("Whats up")
      ],
    );
  }
}
