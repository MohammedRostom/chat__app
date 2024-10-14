import 'package:apply_pagenation/core/Constant/size_screen.dart';
import 'package:apply_pagenation/core/Theme/Colors.dart';
import 'package:apply_pagenation/features/Auth/peresentaion/view/splach/widget/whtaspp_Icon.dart';
import 'package:flutter/material.dart';
import '../../../../../core/Components/screenBodySize.dart';
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
    // NavgateTo(context, Widget: homePage(), time: 3);
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
