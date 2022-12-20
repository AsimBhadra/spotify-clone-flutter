import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/src/config/colors/colors.dart';

/// This class is used to define the theme of the app.
class AppTheme {
  /// This method is used to get the light theme of the app.
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.blackColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.greyColor,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 20.h,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
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
            headline3: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.whiteColor,
              fontFamily: 'Gotham',
            ),
            headline4: TextStyle(
              fontSize: 22.sp,
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
            subtitle1: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.whiteColor.withOpacity(0.6),
              fontFamily: 'Gotham',
            ),
          ),
    );
  }
}
