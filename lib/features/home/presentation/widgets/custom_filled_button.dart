import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ososs_flutter_test/core/resources/border_raduis_manager.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    required this.content,
    required this.onPressed,
    required this.backgroundColor,
  });
  final String content;
  final VoidCallback onPressed;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        height: 50.h,
        child: FilledButton(
          onPressed: onPressed,
          style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusManager.radiusAll10,
            ),
            backgroundColor: backgroundColor,
          ),
          child: Text(
            content,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      );
}
