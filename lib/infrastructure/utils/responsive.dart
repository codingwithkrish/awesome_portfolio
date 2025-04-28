import 'dart:io' show Platform; // Important: Only import if not on web
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Responsive {
  // Initialize this in main.dart
  static void init(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812), // Base design size
      minTextAdapt: true,
      splitScreenMode: true,
    );
  }

  // Text Sizes
  static double get textSmall => 12.sp;
  static double get textRegular => 14.sp;
  static double get textMedium => 16.sp;
  static double get textLarge => 20.sp;
  static double get textExtraLarge => 24.sp;

  // Spacing
  static double get spaceExtraSmall => 4.w;
  static double get spaceSmall => 8.w;
  static double get spaceMedium => 16.w;
  static double get spaceLarge => 24.w;
  static double get spaceExtraLarge => 32.w;

  // Padding
  static EdgeInsets get pagePadding => EdgeInsets.symmetric(horizontal: 16.w);

  // Border Radius
  static BorderRadius get borderRadiusSmall => BorderRadius.circular(8.r);
  static BorderRadius get borderRadiusMedium => BorderRadius.circular(12.r);
  static BorderRadius get borderRadiusLarge => BorderRadius.circular(16.r);

  // Device Type Helpers
  static bool get isMobile => ScreenUtil().screenWidth < 600;
  static bool get isTablet => ScreenUtil().screenWidth >= 600 && ScreenUtil().screenWidth < 1024;
  static bool get isDesktop => ScreenUtil().screenWidth >= 1024;

  // Platform Helpers
  static bool get isWeb => kIsWeb;

  static bool get isAndroid => !kIsWeb && Platform.isAndroid;
  static bool get isIOS => !kIsWeb && Platform.isIOS;
  static bool get isWindows => !kIsWeb && Platform.isWindows;
  static bool get isMacOS => !kIsWeb && Platform.isMacOS;
  static bool get isLinux => !kIsWeb && Platform.isLinux;
}
