import 'package:Chat_app/core/Components/Cust_text.dart';
import 'package:Chat_app/core/Components/Gap_Releted.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:Chat_app/core/comm_methods/ComMethods.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:Chat_app/features/AddStory/peresentaion/view/OurStatus/our_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class status_item extends StatelessWidget {
  status_item({
    super.key,
    required this.name,
    required this.date,
    required this.isMyStory,
  });

  final String name, date;
  final bool isMyStory;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !isMyStory
          ? () {
              NavgateTo(context,
                  Widget: SmoothProgressTimelineScreen(), time: 0);
            }
          : null,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 30.r,
                    ),
                    isMyStory
                        ? Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                radius: 12.r,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                radius: 9.r,
                                backgroundColor:
                                    AppColors.PrimaryContainerColor,
                              ),
                            ],
                          )
                        : Container(),
                  ],
                ),
                Gap_Releted(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Cust_text(
                      TeStyle: ThemeText(context).titleLarge!.copyWith(),
                      TextT: name,
                      MaxLins: 1,
                    ),
                    Container(
                      child: Cust_text(
                        TeStyle: ThemeText(context)
                            .titleMedium!
                            .copyWith(color: AppColors.subtitleChat),
                        TextT: date,
                        MaxLins: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
