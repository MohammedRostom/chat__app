import 'package:apply_pagenation/features/Auth/peresentaion/view/splach/widget/Icon.dart';
import 'package:flutter/material.dart';

import '../../../../../core/Constant/ComMettods.dart';
import '../../../../../core/Constant/constants.dart';
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
    NavgateTo(context, Widget: homePage(), time: 3);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: HighOfScreen(context),
        width: WidthOfScreen(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                whatsUpIcon(),
                Text(
                    "The Bes App  For this CountryThis The Bes App  For this CountryThis The Bes App  For this Country",
                    style: TextStyle(fontSize: 12, color: Colors.green))
              ],
            )
          ],
        ),
      ),
    );
  }
}
