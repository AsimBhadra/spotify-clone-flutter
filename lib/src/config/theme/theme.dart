import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/src/config/colors/colors.dart';

/// This class is used to define the theme of the app.
class AppTheme {
  /// This method is used to get the light theme of the app.
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.blackColor,
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.whiteColor,
              fontFamily: 'Gotham',
            ),
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            AppColors.whiteColor,
          ),
        ),
      ),
      textTheme: const TextTheme()
          .apply(
            bodyColor: AppColors.whiteColor,
            displayColor: AppColors.whiteColor,
          )
          .copyWith(
            headline1: TextStyle(
              fontSize: 36.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.whiteColor,
              fontFamily: 'Gotham',
            ),
            headline6: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
              fontFamily: 'Gotham',
            ),
          ),
    );
  }
}
