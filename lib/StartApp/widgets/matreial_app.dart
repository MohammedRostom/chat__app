import 'package:Chat_app/core/Theme/Style.dart';
import 'package:Chat_app/core/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class matreial_app extends StatelessWidget {
  const matreial_app({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
    ));
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
      // routhing
      routes: Routeing.MapOfAppRoutes,
      initialRoute: Routeing.progressTimelineScreen,
      theme: AppTheme.LighTheme,
      // Themes
      darkTheme: AppTheme.DarkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
