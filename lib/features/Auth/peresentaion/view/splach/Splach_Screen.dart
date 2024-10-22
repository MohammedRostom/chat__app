import 'package:Chat_app/core/Components/Gap_Releted.dart';
import 'package:Chat_app/core/Constant/screen_size.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/login/loginscreen.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/splach/widget/whtaspp_Icon.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/layout/Layout_home.dart';
import 'package:flutter/material.dart';
import '../../../../../core/Components/screenBodySize.dart';
import '../../../../../core/comm_methods/ComMethods.dart';
import '../../../../../generated/l10n.dart';

class SpachScreen extends StatefulWidget {
  const SpachScreen({super.key});

  @override
  State<SpachScreen> createState() => _SpachScreenState();
}

class _SpachScreenState extends State<SpachScreen> {
  @override
  void initState() {
    // TODO: implement initState
    NavgateTo(context, Widget: Loginscreen(), time: 3);
  }

  Widget build(BuildContext context) {
    print(HighOfScreen(context));
    print(WidthOfScreen(context));
    return Scaffold(
      body: screenBodySize(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                whatsUpIcon(),
                Gap_Releted(),
                Text(S.of(context).Best_app,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: AppColors.PrimaryContainerColor))
              ],
            )
          ],
        ),
      ),
    );
  }
}
