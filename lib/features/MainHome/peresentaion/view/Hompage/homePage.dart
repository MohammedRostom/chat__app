import 'package:apply_pagenation/core/Constant/constants.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: HighOfScreen(context),
        width: WidthOfScreen(context),
        child: Text(
          "Hi",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
