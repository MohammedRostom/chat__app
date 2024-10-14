import 'package:apply_pagenation/features/Auth/peresentaion/view/splach/Splach_Screen.dart';
import 'package:apply_pagenation/features/MainHome/peresentaion/view/Hompage/homePage.dart';
import 'package:flutter/material.dart';

class Routeing {
  static final Start = "/";
  static final Home = "Home";

  static Map<String, Widget Function(BuildContext)> MapOfAppRoutes = {
    Start: (context) => SpachScreen(),
    Home: (context) => homescreen(),
  };
}
