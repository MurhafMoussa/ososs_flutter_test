import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaddingManager {
  PaddingManager._();
  static EdgeInsets appHorizontalPadding = const EdgeInsets.symmetric(
    horizontal: horizontal,
  ).w;
  static EdgeInsets appTotalPadding = const EdgeInsets.only(
    left: left,
    right: right,
    top: top,
    bottom: bottom,
  ).w;
  static EdgeInsets appTotalWithBackButtonPadding = const EdgeInsets.only(
    left: left,
    right: right,
    top: topWithBackButton,
    bottom: bottom,
  ).w;
  static EdgeInsets appTotalWithStepperPadding = const EdgeInsets.symmetric(
    horizontal: horizontal,
    vertical: bottom,
  ).w;
  static EdgeInsets appPaddingWithoutTop = const EdgeInsets.only(
    left: left,
    right: right,
    bottom: bottom,
  ).w;
  static EdgeInsets appPaddingWithoutBottom = const EdgeInsets.only(
    left: left,
    right: right,
    top: top,
  ).w;
  static EdgeInsets appVerticalPadding = const EdgeInsets.only(
    top: top,
    bottom: bottom,
  ).h;
  static EdgeInsets appVerticalPaddingWithBackButtonAtTheTop =
      const EdgeInsets.only(
    top: topWithBackButton,
    bottom: bottom,
  ).h;
  static EdgeInsets appVerticalPaddingWithStepper = const EdgeInsets.symmetric(
    vertical: bottom,
  ).h;
  static EdgeInsets appTopPadding = const EdgeInsets.only(top: top).h;
  static EdgeInsets appTopPaddingWithBackButton = const EdgeInsets.only(
    top: topWithBackButton,
  ).h;
  static EdgeInsets appTopPaddingWithStepper = const EdgeInsets.only(
    top: bottom,
  ).h;
  static EdgeInsets appBottomPadding = const EdgeInsets.only(bottom: bottom).h;
  static EdgeInsets appLeftPadding = const EdgeInsets.only(left: left).w;
  static EdgeInsets appRightPadding = const EdgeInsets.only(right: right).w;
  static EdgeInsets paddingAll20 = const EdgeInsets.all(20).w;
  static EdgeInsets paddingVertical20 =
      const EdgeInsets.symmetric(vertical: 20).w;
  static EdgeInsets paddingHorizontal20 =
      const EdgeInsets.symmetric(horizontal: 20).w;
  static EdgeInsets contentPaddingV12H16 = const EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 12,
  ).w;
  static EdgeInsets contentPaddingV15H20 = const EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 15,
  ).w;
  static EdgeInsets contentPaddingV7H14 = const EdgeInsets.symmetric(
    horizontal: 14,
    vertical: 7,
  ).w;
  static EdgeInsets paddingVertical4 =
      const EdgeInsets.symmetric(vertical: PaddingManager.p4).h;
  static EdgeInsets paddingVertical8 =
      const EdgeInsets.symmetric(vertical: PaddingManager.p8).h;
  static EdgeInsets paddingVertical12 = EdgeInsets.symmetric(vertical: 12).h;

  static const double left = 20;
  static const double right = 20;
  static const double bottom = 50;
  static const double top = 80;
  static const double horizontal = 20;
  static const double topWithBackButton = 60;
  static const double p15 = 15;
  static const double p14 = 14;
  static const double p12 = 12;
  static const double p20 = 20;
  static const double p24 = 24;
  static const double p30 = 30;
  static const double p4 = 4;
  static const double p8 = 8;
  static const double p2 = 2;
}
