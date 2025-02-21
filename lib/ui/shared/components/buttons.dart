import 'package:flutter/material.dart';
import 'package:sharp_work/ui/ui.dart';

class PrimaryButton extends StatelessWidget {
  final Color? textColor;
  final Color? color;
  final String label;
  final VoidCallback? onTap;
  final bool disabled;
  final bool loading;

  const PrimaryButton({
    super.key,
    this.textColor,
    this.color,
    required this.label,
    this.onTap,
    this.disabled = false,
    this.loading = false,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: disabled || loading ? null : onTap,
      color: color ?? context.primaryColor,
      minWidth: double.infinity,
      disabledColor: context.grey,
      height: 52,
      elevation: 0,
      highlightElevation: 0,
      hoverElevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: SharpBorderRadius.radius10,
      ),
      child: loading
          ? SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                color: color ?? context.primaryColor,
                strokeWidth: 3,
              ),
            )
          : Text(
              label,
              style: context.titleSmall.copyWith(
                color: disabled
                    ? context.black.withAlpha(150)
                    : (textColor ?? context.white),
              ),
            ),
    );
  }
}
