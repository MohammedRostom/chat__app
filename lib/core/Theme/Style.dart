import 'package:apply_pagenation/core/Theme/Colors.dart';
import 'package:apply_pagenation/core/Constant/size_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 60 White ,30 Green  10 Grey  Container
class AppTheme {
  static final ThemeData LighTheme = ThemeData(
      useMaterial3: false,
      colorScheme: ThemeData().colorScheme.copyWith(
            brightness: Brightness.light,
            primaryContainer: AppColors.PrimaryContainerColor,
            secondaryContainer: AppColors.SeconoryContainerColor,
          ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
            fontSize: FontSize.HederSize, color: AppColors.BLackTextColor),
        titleLarge: TextStyle(
            fontSize: FontSize.TitleSize, color: AppColors.BLackTextColor),
        titleMedium: TextStyle(
            fontSize: FontSize.SubTitleSize, color: AppColors.BLackTextColor),
        titleSmall: TextStyle(
            fontSize: FontSize.S_Size, color: AppColors.BLackTextColor),
      ),
      iconTheme: IconThemeData(color: AppColors.BLackTextColor, size: 40.r));

  static final ThemeData DarkTheme = ThemeData(
      useMaterial3: false,
      colorScheme: ThemeData().colorScheme.copyWith(
            brightness: Brightness.dark,
            primaryContainer: AppColors.PrimaryContainerColor,
            secondaryContainer: AppColors.SeconoryContainerColor,
          ),
      scaffoldBackgroundColor: Colors.lightGreen.withOpacity(0.5),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
            fontSize: FontSize.HederSize, color: AppColors.WhiteColor),
        titleLarge: TextStyle(
            fontSize: FontSize.TitleSize, color: AppColors.WhiteColor),
        titleMedium: TextStyle(
            fontSize: FontSize.SubTitleSize, color: AppColors.WhiteColor),
        titleSmall:
            TextStyle(fontSize: FontSize.S_Size, color: AppColors.WhiteColor),
      ),
      iconTheme: IconThemeData(color: AppColors.BLackTextColor, size: 40.r));
}
