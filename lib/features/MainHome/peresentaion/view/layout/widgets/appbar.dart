import 'package:Chat_app/core/Components/Cust_text.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:Chat_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar cus_Appbar(BuildContext context, tabController) {
  return AppBar(
    backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    elevation: 0.2,
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search,
            size: 25.r, color: Theme.of(context).iconTheme.color),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_vert_rounded,
            size: 25.r, color: Theme.of(context).iconTheme.color),
      ),
    ],
    title:
        Cust_text(TeStyle: ThemeText(context).titleLarge!, TextT: "Whats Up"),
    bottom: TabBar(
      labelColor: ThemeText(context).titleLarge!.color,
      controller: tabController, // Added controller here
      tabs: [
        Tab(
          text: S.of(context).Chats,
        ),
        Tab(
          text: S.of(context).Status,
        ),
        Tab(
          text: S.of(context).Calls,
        ),
      ],
    ),
  );
}
