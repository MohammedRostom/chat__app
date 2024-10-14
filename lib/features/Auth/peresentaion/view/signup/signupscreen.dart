import 'package:Chat_app/core/Components/screenBodySize.dart';
import 'package:flutter/material.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenBodySize(widget: Text("signup")),
    );
  }
}
