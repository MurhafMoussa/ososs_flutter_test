import 'package:flutter/material.dart';

import 'package:ososs_flutter_test/core/resources/font_manager.dart';

TextStyle _getTextStyle({
  required double fontSize,
  required FontWeight fontWeight,
  double? height,
  double? letterSpacing,
  Color? color,
}) =>
    TextStyle(
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      fontSize: fontSize,
      overflow: TextOverflow.fade,
      height: height,
      letterSpacing: letterSpacing,
    );
TextStyle? getRegularTextStyle({
  required double fontSize,
  double? height,
  double? letterSpacing,
  Color? color,
}) =>
    _getTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
TextStyle? getMeduimTextStyle({
  required double fontSize,
  double? height,
  double? letterSpacing,
  Color? color,
}) =>
    _getTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
TextStyle? getBoldTextStyle({
  required double fontSize,
  double? height,
  double? letterSpacing,
  Color? color,
}) =>
    _getTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
    );
