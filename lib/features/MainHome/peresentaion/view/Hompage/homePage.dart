import 'package:Chat_app/core/Components/Cust_text.dart';
import 'package:Chat_app/core/Components/screenBodySize.dart';
import 'package:Chat_app/core/comm_methods/themeColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
          title: Cust_text(
              TeStyle: ThemeText(context).titleLarge!, TextT: "Whats Up"),
          bottom: TabBar(
            labelColor: ThemeText(context).titleLarge!.color,
            controller: _tabController, // Added controller here
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
        ),
        body: screenBodySize(
          TopMargin: 0,
          widget: TabPages(tabController: _tabController),
        ));
  }
}

class TabPages extends StatelessWidget {
  const TabPages({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController, // Added controller here
      children: [
        Column(
          children: [
            ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title: Text("skjflskdjlkj"),
                subtitle: Text("skjflskdjlkj"),
                leading: CircleAvatar(),
              ),
            )
          ],
        ),
        Center(child: Text('Favorites Page')),
        Center(child: Text('Settings Page')),
      ],
    );
  }
}
