import 'package:Chat_app/core/Components/Cust_text.dart';
import 'package:Chat_app/core/Components/Gap_Releted.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chatitem extends StatelessWidget {
  const Chatitem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30.r,
              ),
              const Gap_Releted(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Cust_text(
                    TeStyle: ThemeText(context).titleLarge!.copyWith(),
                    TextT: "0131354786735123",
                    MaxLins: 1,
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: 120.w),
                    child: Cust_text(
                      TeStyle: ThemeText(context)
                          .titleMedium!
                          .copyWith(color: AppColors.subtitleChat),
                      TextT: "messagemessagemessagemessagemessagemessage",
                      MaxLins: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              const Text("22:25"),
              CircleAvatar(
                radius: 10.r,
                child: Text("5"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
