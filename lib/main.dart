import 'package:apply_pagenation/core/Theme/Style.dart';
import 'package:apply_pagenation/core/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      builder: (context, child) => matreial_app(),
    );
  }
}

class matreial_app extends StatelessWidget {
  const matreial_app({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale("en"),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      routes: Routeing.MapOfAppRoutes,
      initialRoute: Routeing.Start,
      theme: AppTheme.LighTheme,
      darkTheme: AppTheme.DarkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
