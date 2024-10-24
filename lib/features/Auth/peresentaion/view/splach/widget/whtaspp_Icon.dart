import 'package:Chat_app/core/Components/Gap_Releted.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/Constant/Assets.dart';
import '../../../../../../core/Constant/Icons_size.dart';

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
          width: WhatsAppIconSize,
        ),
        Gap_Releted(),
        Text(
          "Whats up",
          style: Theme.of(context).textTheme.titleLarge!,
        )
      ],
    );
  }
}
