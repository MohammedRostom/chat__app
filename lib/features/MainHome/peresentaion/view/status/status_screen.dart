import 'package:Chat_app/core/Components/Cust_text.dart';
import 'package:Chat_app/core/Components/Gap_Releted.dart';
import 'package:Chat_app/core/Components/screenBodySize.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/status/widgets/status_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class status_screen extends StatelessWidget {
  const status_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          status_item(
            isMyStory: true,
            name: "My tatus ",
            date: "Top to add status updates",
          ),
          Divider(),
          Gap_Releted(),
          Cust_text(
            TeStyle: ThemeText(context)
                .titleMedium!
                .copyWith(color: AppColors.subtitleChat),
            TextT: "Recent Updates",
            MaxLins: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Column(
            children: List.generate(
                7,
                (index) => status_item(
                      isMyStory: false,
                      name: "your name",
                      date: "12 minutes ago",
                    )),
          ),
          Gap_Releted(),
          Cust_text(
            TeStyle: ThemeText(context)
                .titleMedium!
                .copyWith(color: AppColors.subtitleChat),
            TextT: "Viewed  Updates",
            MaxLins: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Gap_Releted(),
          Column(
            children: List.generate(
                3,
                (index) => status_item(
                      isMyStory: false,
                      name: "your name",
                      date: "12 minutes ago",
                    )),
          ),
        ],
      ),
    ));
  }
}
