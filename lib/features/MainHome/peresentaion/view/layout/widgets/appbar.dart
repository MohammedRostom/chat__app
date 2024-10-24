import 'package:Chat_app/StartApp/main.dart';
import 'package:Chat_app/core/Components/Cust_text.dart';
import 'package:Chat_app/core/Components/Gap_Releted.dart';
import 'package:Chat_app/core/Constant/Assets.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/layout/widgets/DroupPopupMenuButton.dart';
import 'package:Chat_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

final List<String> _options = [
  'New Group ',
  'New Broadcast',
  'Starred Nessage',
  'Settings',
];

AppBar cus_Appbar(BuildContext context, tabController) {
  return AppBar(
    backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    elevation: 0.2,
    actions: [
      InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            Assets.Search,
            color: Theme.of(context).iconTheme.color,
          )),
      Gap_Releted(),
      DroupPopupMenuButton(),
    ],
    title:
        Cust_text(TeStyle: ThemeText(context).titleLarge!, TextT: "Whats Up"),
    bottom: TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: AppColors.PrimaryContainerColor,
      unselectedLabelColor: ThemeText(context).titleLarge!.color,
      labelColor: AppColors.PrimaryContainerColor,
      controller: tabController, // Added controller here
      tabs: [
        Container(
          padding: EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                S.of(context).Chats,
                style: ThemeText(context).titleMedium!.copyWith(),
              ),
              Gap_Releted(),
              CircleAvatar(
                radius: 9.r,
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                S.of(context).Status,
                style: ThemeText(context).titleMedium!.copyWith(),
              ),
              Gap_Releted(),
              CircleAvatar(
                radius: 9.r,
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                S.of(context).Calls,
                style: ThemeText(context).titleMedium!.copyWith(),
              ),
              Gap_Releted(),
              CircleAvatar(
                radius: 9.r,
              )
            ],
          ),
        ),
      ],
    ),
  );
}
