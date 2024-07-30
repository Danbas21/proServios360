import 'package:flutter/material.dart';

class ResponsiveUtil {
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 780;
  }

  static bool isTablet(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width > 780 && width <= 5400;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 5400;
  }

  static double getMultiplier(BuildContext context) {
    if (isMobile(context)) {
      return 0.45;
    } else if (isTablet(context)) {
      return 0.65;
    } else {
      return 1.0;
    }
  }
}
