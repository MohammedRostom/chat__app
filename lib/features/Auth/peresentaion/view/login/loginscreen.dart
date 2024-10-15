import 'package:Chat_app/core/Components/screenBodySize.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/login/widgets/BodyLoginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: screenBodySize(bottomMargin: 20.r, widget: BodyLoginScreen()),
    );
  }
}
