import 'package:flutter/material.dart';
import 'package:spotify_clone/src/config/colors/colors.dart';

/// This class is used to define the theme of the app.
class AppTheme {
  /// This method is used to get the light theme of the app.
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.blackColor,
    );
  }
}
