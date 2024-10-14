import 'package:Chat_app/core/Constant/screen_size.dart';
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

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
