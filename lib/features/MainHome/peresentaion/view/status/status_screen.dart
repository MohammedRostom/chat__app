import 'package:Chat_app/core/Components/Cust_text.dart';
import 'package:Chat_app/core/Components/screenBodySize.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:flutter/material.dart';

class status_screen extends StatelessWidget {
  const status_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenBodySize(
        widget: Center(
            child: Cust_text(
                TeStyle: ThemeText(context).titleLarge!,
                TextT: "status_screen")),
      ),
    );
  }
}
