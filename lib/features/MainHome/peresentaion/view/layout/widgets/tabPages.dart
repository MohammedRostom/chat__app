import 'package:Chat_app/features/MainHome/peresentaion/view/calls/call_screen.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/chats/chats_screen.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/status/status_screen.dart';
import 'package:flutter/material.dart';

class TabPages extends StatelessWidget {
  TabPages({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  List<Widget> pages = [chats_screen(), status_screen(), call_screen()];
  @override
  Widget build(BuildContext context) {
    return TabBarView(
        controller: _tabController, // Added controller here
        children: pages);
  }
}
