import 'package:Chat_app/core/Components/Gap_NotReleted.dart';
import 'package:Chat_app/core/Components/Gap_Releted.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/login/widgets/Form_section.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/login/widgets/Hero_section.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/login/widgets/Registerhere_section.dart';

import 'package:flutter/material.dart';
import '../../../../../../core/Components/Custm_btn.dart';
import '../../signup/widgets/Form_section.dart';

class BodyLoginScreen extends StatelessWidget {
  const BodyLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero_section(),
        Gap_NotReleted(),
        Form_section(),
        Gap_Releted(),
        Gap_Releted(),
        Custm_btn(),
        Gap_Releted(),
        Registerhere_section(),
      ],
    );
  }
}
