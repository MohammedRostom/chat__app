import 'package:Chat_app/core/Constant/Icons_size.dart';
import 'package:Chat_app/core/Constant/fonts_size.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:flutter/material.dart';

// 60 White ,30 Green  10 Grey  Container
class AppTheme {
  static final ThemeData LighTheme = ThemeData(
      useMaterial3: false,
      colorScheme: ThemeData().colorScheme.copyWith(
            brightness: Brightness.light,
            primaryContainer: AppColors.PrimaryContainerColor,
            primary: AppColors.PrimaryContainerColor,
            secondary: AppColors.SeconoryContainerColor,
            secondaryContainer: AppColors.SeconoryContainerColor,
          ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        headlineLarge:
            TextStyle(fontSize: FontSize.H3, color: AppColors.BLackTextColor),
        titleLarge: TextStyle(
            fontSize: FontSize.TitleSize, color: AppColors.BLackTextColor),
        titleMedium: TextStyle(
            fontSize: FontSize.SubTitleSize, color: AppColors.BLackTextColor),
        titleSmall: TextStyle(
            fontSize: FontSize.S_Size, color: AppColors.BLackTextColor),
      ),
      iconTheme:
          IconThemeData(color: AppColors.BLackTextColor, size: IconsAppSize));

  static final ThemeData DarkTheme = ThemeData(
      useMaterial3: false,
      colorScheme: ThemeData().colorScheme.copyWith(
            brightness: Brightness.dark,
            primaryContainer: AppColors.PrimaryContainerColor,
            secondaryContainer: AppColors.SeconoryContainerColor,
          ),
      scaffoldBackgroundColor:
          const Color.fromARGB(255, 17, 17, 17).withOpacity(0.5),
      textTheme: TextTheme(
        headlineLarge:
            TextStyle(fontSize: FontSize.H3, color: AppColors.WhiteColor),
        titleLarge: TextStyle(
            fontSize: FontSize.TitleSize, color: AppColors.WhiteColor),
        titleMedium: TextStyle(
            fontSize: FontSize.SubTitleSize, color: AppColors.WhiteColor),
        titleSmall:
            TextStyle(fontSize: FontSize.S_Size, color: AppColors.WhiteColor),
      ),
      iconTheme:
          IconThemeData(color: AppColors.BLackTextColor, size: IconsAppSize));
}
