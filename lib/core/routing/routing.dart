import 'package:Chat_app/features/AddStory/peresentaion/view/OurStatus/our_status.dart';
import 'package:Chat_app/features/AddStory/peresentaion/view/addstory/addstory.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/login/loginscreen.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/signup/signupscreen.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/splach/Splach_Screen.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/calls/call_screen.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/chats/chats_screen.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/layout/Layout_home.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/status/status_screen.dart';
import 'package:flutter/material.dart';

class Routeing {
  static final Start = "/";
  static final Login = "Login";
  static final Signup = "Signup";
  static final Layout_home = "layout_home";
  static final Chats = "Chats";
  static final Status = "status";
  static final Calls = "calls";
  static final Addstory = "Addstory";
  static final progressTimelineScreen = "progressTimelineScreen";

  static Map<String, Widget Function(BuildContext)> MapOfAppRoutes = {
    Start: (context) => SpachScreen(),
    Login: (context) => Loginscreen(),
    Signup: (context) => Signupscreen(),
    Layout_home: (context) => layout_home(),
    Chats: (context) => chats_screen(),
    Status: (context) => status_screen(),
    Calls: (context) => call_screen(),
    Addstory: (context) => addstory(),
    progressTimelineScreen: (context) => SmoothProgressTimelineScreen(),
  };
}
