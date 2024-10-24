import 'package:Chat_app/core/Constant/Icons_size.dart';
import 'package:Chat_app/core/Constant/fonts_size.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:flutter/material.dart';

// 60 White ,30 Green  10 Grey  Container
class AppTheme {
  static final ThemeData LighTheme = ThemeData(
      primaryColor: AppColors.PrimaryContainerColor,
      useMaterial3: false,
      colorScheme: ThemeData().colorScheme.copyWith(
            brightness: Brightness.light,
            primaryContainer: AppColors.PrimaryContainerColor,
            primary: AppColors.PrimaryContainerColor,
            secondary: AppColors.SeconoryContainerColor,
            secondaryContainer: AppColors.SeconoryContainerColor,
          ),
      appBarTheme: AppBarTheme(backgroundColor: AppColors.AppBarLightColor),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
            fontSize: FontSize.H1,
            color: AppColors.BLackTextColor,
            fontFamily: FontFamily),
        titleLarge: TextStyle(
            overflow: TextOverflow.ellipsis,
            fontSize: FontSize.TitleSize,
            color: AppColors.BLackTextColor,
            fontFamily: FontFamily),
        titleMedium: TextStyle(
            fontSize: FontSize.SubTitleSize,
            color: AppColors.BLackTextColor,
            fontFamily: FontFamily),
        titleSmall: TextStyle(
            fontSize: FontSize.S_Size,
            color: AppColors.BLackTextColor,
            fontFamily: FontFamily),
      ),
      iconTheme:
          IconThemeData(color: AppColors.BLackTextColor, size: IconsAppSize));

// +++++++++++++++++++++++++++++++++++++++++++++============================================================================
// +++++++++++++++++++++++++++++++++++++++++++++============================================================================
// +++++++++++++++++++++++++++++++++++++++++++++============================================================================
// +++++++++++++++++++++++++++++++++++++++++++++============================================================================
// +++++++++++++++++++++++++++++++++++++++++++++============================================================================
// +++++++++++++++++++++++++++++++++++++++++++++============================================================================
// +++++++++++++++++++++++++++++++++++++++++++++============================================================================
// +++++++++++++++++++++++++++++++++++++++++++++============================================================================
// +++++++++++++++++++++++++++++++++++++++++++++============================================================================
// +++++++++++++++++++++++++++++++++++++++++++++============================================================================
// +++++++++++++++++++++++++++++++++++++++++++++============================================================================
// +++++++++++++++++++++++++++++++++++++++++++++============================================================================

  static final ThemeData DarkTheme = ThemeData(
      primaryColor: AppColors.PrimaryContainerColor,
      useMaterial3: false,
      colorScheme: ThemeData().colorScheme.copyWith(
            brightness: Brightness.dark,
            primaryContainer: AppColors.PrimaryContainerColor,
            secondaryContainer: AppColors.SeconoryContainerColor,
          ),
      appBarTheme:
          AppBarTheme(backgroundColor: Color.fromARGB(127, 22, 22, 22)),
      scaffoldBackgroundColor: AppColors.BLackTextColor,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
            fontSize: FontSize.H2,
            color: AppColors.WhiteColor,
            fontFamily: FontFamily),
        titleLarge: TextStyle(
            fontSize: FontSize.TitleSize,
            color: AppColors.WhiteColor,
            fontFamily: FontFamily),
        titleMedium: TextStyle(
            fontSize: FontSize.SubTitleSize,
            color: AppColors.WhiteColor,
            fontFamily: FontFamily),
        titleSmall: TextStyle(
            fontSize: FontSize.S_Size,
            color: AppColors.WhiteColor,
            fontFamily: FontFamily),
      ),
      iconTheme:
          IconThemeData(color: AppColors.WhiteColor, size: IconsAppSize));
}
