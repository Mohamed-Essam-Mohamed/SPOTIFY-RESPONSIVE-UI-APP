import 'package:flutter/material.dart';
import 'package:spotify_ui/src/utils/app_colors.dart';

class AppTextStyle {
  static TextStyle textStyle32 = TextStyle(
    color: AppColors.colorWite,
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStyle14 = TextStyle(
    fontSize: 14.0,
    color: AppColors.colorGrey,
    fontWeight: FontWeight.w500,
    letterSpacing: 2.0,
  );
  static TextStyle textStyle16 = TextStyle(
    color: AppColors.colorGrey,
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.0,
  );
  static TextStyle textStyle = TextStyle(
    color: AppColors.colorGrey,
    letterSpacing: 1.0,
  );
}
