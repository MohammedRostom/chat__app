import 'dart:async';
import 'package:Chat_app/core/Components/Cust_text.dart';
import 'package:Chat_app/core/Components/Gap_NotReleted.dart';
import 'package:Chat_app/core/Components/Gap_Releted.dart';
import 'package:Chat_app/core/Components/screenBodySize.dart';
import 'package:Chat_app/core/Constant/screen_size.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:Chat_app/core/comm_methods/ComMethods.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/layout/Layout_home.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/status/widgets/status_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmoothProgressTimelineScreen extends StatefulWidget {
  @override
  _SmoothProgressTimelineScreenState createState() =>
      _SmoothProgressTimelineScreenState();
}

class _SmoothProgressTimelineScreenState
    extends State<SmoothProgressTimelineScreen> {
  double _progress = 0.0; // Initialize progress
  Timer? _timer;
  final int _totalDuration = 10; // Total duration in seconds

  @override
  void initState() {
    super.initState();
    _startProgress();
  }

  void _startProgress() {
    const int totalSteps = 100; // Number of steps for smooth progress
    const duration = Duration(milliseconds: 100); // Interval for updates

    _timer = Timer.periodic(duration, (timer) {
      setState(() {
        print("$timer");
        // Increment progress smoothly
        _progress += 1 / totalSteps;
      });
      if (_progress >= 1.0) {
        NavgateTo(context, Widget: layout_home(), time: 0);
        _timer?.cancel(); // Stop the timer when complete
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Clean up the timer
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: WidthOfScreen(context),
            height: HighOfScreen(context),
            child: Image.network(
                fit: BoxFit.cover,
                "https://i0.wp.com/picjumbo.com/wp-content/uploads/autumn-background-with-space-for-text-and-leaves-around-free-image.jpeg?w=600&quality=80"),
          ),
          screenBodySize(
            widget: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        1,
                        (index) => AnimatedContainer(
                          width: 350,
                          duration: Duration(seconds: 1),
                          child: LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(23),
                            value: _progress, // Set the progress value
                            minHeight: 5, // Set the height of the progress bar
                            backgroundColor: Colors.grey[
                                300], // Background color of the progress bar
                            valueColor: AlwaysStoppedAnimation<Color>(AppColors
                                .PrimaryContainerColor), // Color of the filled part
                          ),
                        ),
                      )),
                  Gap_NotReleted(),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                      ),
                      Gap_Releted(),
                      Cust_text(
                          TeStyle: ThemeText(context).titleMedium!,
                          TextT: "Contact name")
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
