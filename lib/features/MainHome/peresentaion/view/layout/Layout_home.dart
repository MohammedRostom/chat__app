import 'package:Chat_app/core/Components/screenBodySize.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/layout/widgets/Action_btn.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/layout/widgets/appbar.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/layout/widgets/tabPages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class layout_home extends StatefulWidget {
  const layout_home({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<layout_home>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    print(tabController.index);
    return Scaffold(
        floatingActionButton: Action_btn(
          controller: tabController,
        ),
        appBar: cus_Appbar(context, tabController),
        body: screenBodySize(
          TopMargin: 0,
          widget: TabPages(
            tabController: tabController,
          ),
        ));
  }
}
