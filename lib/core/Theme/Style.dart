import 'package:apply_pagenation/core/Theme/Colors.dart';
import 'package:apply_pagenation/core/Theme/Fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 60 White ,30 Green  10 Grey  Container
class Themes {
  static final ThemeData LighTheme = ThemeData(
      useMaterial3: false,
      colorScheme: ThemeData().colorScheme.copyWith(
            brightness: Brightness.light,
            primaryContainer: AppColors.PrimaryColor,
            secondaryContainer: AppColors.SeconoryColor,
          ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
            fontSize: FontSize.HederSize, color: AppColors.BLackColor),
        titleLarge: TextStyle(
            fontSize: FontSize.TitleSize, color: AppColors.BLackColor),
        titleMedium: TextStyle(
            fontSize: FontSize.SubTitleSize, color: AppColors.BLackColor),
        titleSmall:
            TextStyle(fontSize: FontSize.S_Size, color: AppColors.BLackColor),
      ),
      iconTheme: IconThemeData(color: AppColors.BLackColor, size: 40.r));
}
