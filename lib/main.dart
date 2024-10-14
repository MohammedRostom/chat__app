import 'package:apply_pagenation/core/Theme/Style.dart';
import 'package:apply_pagenation/core/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/Auth/peresentaion/view/splach/Splach_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        locale: Locale("en"),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        debugShowCheckedModeBanner: false,
        routes: Routeing.MapOfAppRoutes,
        initialRoute: Routeing.Start,
        theme: AppTheme.LighTheme,
        darkTheme: AppTheme.DarkTheme,
        themeMode: ThemeMode.light,
      ),
    );
  }
}
