import 'package:flutter/material.dart';

NavgateTo(context, {required Widget, time}) {
  Future.delayed(Duration(seconds: time ?? 2), () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Widget ?? null),
    );
  });
}
