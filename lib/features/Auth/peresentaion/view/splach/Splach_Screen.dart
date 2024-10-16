import 'package:apply_pagenation/core/Constant/size_screen.dart';
import 'package:apply_pagenation/core/Theme/Colors.dart';
import 'package:apply_pagenation/features/Auth/peresentaion/view/splach/widget/whtaspp_Icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/Components/screenBodySize.dart';
import '../../../../../core/comm_methods/ComMethods.dart';

import '../../../../MainHome/peresentaion/view/Hompage/homePage.dart';

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
                Text("The Best App  For this Country",
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
