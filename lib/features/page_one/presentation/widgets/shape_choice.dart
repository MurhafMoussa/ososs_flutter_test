import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ososs_flutter_test/core/resources/border_raduis_manager.dart';
import 'package:ososs_flutter_test/core/resources/color_manager.dart';

class ShapeChoice extends StatelessWidget {
  /// here I made named constructors and hided the default constructor
  /// so the developer cannot use it in order to enforce him to define new shapes
  /// or stick to the existing ones also the named constructors are more readable
  factory ShapeChoice.circle({required VoidCallback onTap}) => ShapeChoice._(
        color: Colors.redAccent,
        onTap: onTap,
        shape: const CircleBorder(),
      );
  factory ShapeChoice.sharpSquare({required VoidCallback onTap}) =>
      ShapeChoice._(
        color: ColorManager.darkBlue,
        onTap: onTap,
        shape: const RoundedRectangleBorder(),
      );
  factory ShapeChoice.roundedSquare({required VoidCallback onTap}) =>
      ShapeChoice._(
        color: ColorManager.lightBlue,
        onTap: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusManager.radiusAll20,
        ),
      );
  const ShapeChoice._({
    required this.color,
    required this.shape,
    required this.onTap,
  });
  final Color color;
  final ShapeBorder shape;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          width: 70.w,
          height: 70.w,
          decoration: ShapeDecoration(shape: shape, color: color),
        ),
      );
}
