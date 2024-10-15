import 'package:Chat_app/features/Auth/peresentaion/view/login/loginscreen.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/signup/signupscreen.dart';
import 'package:Chat_app/features/Auth/peresentaion/view/splach/Splach_Screen.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/Hompage/homePage.dart';
import 'package:flutter/material.dart';

class Routeing {
  static final Start = "/";
  static final Home = "Home";
  static final Login = "Login";
  static final Signup = "Signup";

  static Map<String, Widget Function(BuildContext)> MapOfAppRoutes = {
    Start: (context) => SpachScreen(),
    Home: (context) => homescreen(),
    Login: (context) => Loginscreen(),
    Signup: (context) => Signupscreen(),
  };
}
