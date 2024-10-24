import 'package:Chat_app/core/Components/Cust_text.dart';
import 'package:Chat_app/core/Components/screenBodySize.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:flutter/material.dart';

class call_screen extends StatelessWidget {
  const call_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "softWrap ?softWrap ?softWrap ?softWrap ?softWrap ?softWrap ?softWrap ?softWrap ?",
            softWrap: false,
          ),
          screenBodySize(
            widget: Center(
              child: Cust_text(
                  TeStyle: ThemeText(context).titleLarge!,
                  TextT: "call_screen"),
            ),
          ),
        ],
      ),
    );
  }
}
