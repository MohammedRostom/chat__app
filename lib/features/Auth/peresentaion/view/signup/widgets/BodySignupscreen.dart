import 'package:Chat_app/core/Components/Gap_NotReleted.dart';
import 'package:Chat_app/core/Components/Gap_Releted.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/signup/widgets/Form_section.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/signup/widgets/Hero_section2.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/signup/widgets/Loginetion_section.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/Components/Custm_btn.dart';

class BodySignupscreen extends StatelessWidget {
  const BodySignupscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero_section2(),
        Gap_NotReleted(),
        Form_section2(),
        Gap_Releted(),
        Gap_Releted(),
        Custm_btn(),
        Gap_Releted(),
        Loginetion_section(),
      ],
    );
  }
}
