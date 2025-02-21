import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sharp_work/ui/ui.dart';

class OnboardingBanner extends StatelessWidget {
  final String label;
  final Color color;
  final Color? textColor;

  const OnboardingBanner({
    super.key,
    required this.label,
    required this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: SharpBorderRadius.radius10,
        color: color,
      ),
      child: Padding(
        padding: SharpPadding.horizontalPadding20.copyWith(
          top: 16.r,
          bottom: 16.r,
        ),
        child: Text(
          label,
          style: context.titleLarge.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
