import 'package:flutter/material.dart';

class DeviceInfo {
  DeviceInfo();

  static bool deviceType(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;

    const double tabletThreshold =
        600.0; // Example threshold, you can adjust this
    return shortestSide < tabletThreshold;
  }

  static bool deviceOrientation(context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return true;
    }
    return false;
  }

  static late bool isTablet;
}
