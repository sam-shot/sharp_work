import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sharp_work/ui/ui.dart';

class SharpTextField extends StatefulWidget {
  const SharpTextField({
    super.key,
    this.label,
    this.controller,
    this.enabled,
    this.prefix,
    this.suffix,
    this.errorText,
    this.textInputAction,
    this.helperText,
    this.autofillHints,
    this.inputFormatters,
    this.onTap,
    this.focusNode,
    this.hint,
    this.keyboardType,
    this.maxLines = 1,
    this.validator,
    this.onChanged,
    this.obscureText = false,
  });
  const SharpTextField.phone({
    super.key,
    this.label,
    this.controller,
    this.enabled,
    this.suffix,
    this.errorText,
    this.helperText,
    this.focusNode,
    this.textInputAction,
    this.onTap,
    this.hint,
    this.inputFormatters,
    this.validator,
    this.autofillHints,
    this.onChanged,
  })  : obscureText = false,
        maxLines = null,
        prefix = const PhoneCountry(),
        keyboardType = TextInputType.phone;

  final String? label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? enabled;
  final bool? obscureText;
  final Widget? prefix;
  final Widget? suffix;
  final List<TextInputFormatter>? inputFormatters;
  final String? errorText;
  final VoidCallback? onTap;
  final String? helperText;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final List<String>? autofillHints;
  final String? hint;
  final int? maxLines;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  @override
  State<SharpTextField> createState() => _SharpTextFieldState();
}

class _SharpTextFieldState extends State<SharpTextField> {
  bool obscureState = false;
  @override
  void initState() {
    obscureState = widget.obscureText!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: context.labelSmall,
          ),
          SharpSpacing.small,
        ],
        TextFormField(
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          style: context.bodyMedium,
          enabled: widget.enabled,
          onChanged: widget.onChanged,
          onTap: widget.onTap,
          autofillHints: widget.autofillHints,
          validator: widget.validator,
          textInputAction: widget.textInputAction,
          maxLines: widget.maxLines,
          inputFormatters: widget.inputFormatters,
          focusNode: widget.focusNode,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: obscureState,
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: context.lightGrey,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            prefixIcon: widget.prefix,
            suffixIcon: widget.obscureText!
                ? IconButton(
                    onPressed: () => setState(() {
                      obscureState = !obscureState;
                    }),
                    icon: Icon(
                      Icons.visibility,
                      color: obscureState
                          ? context.primaryColorLight
                          : context.grey,
                    ),
                  )
                : widget.suffix,
            errorText: widget.errorText,
            helperText: widget.helperText,
            hintText: widget.hint,
            errorStyle: context.bodySmall.copyWith(
              color: context.red,
            ),
            helperStyle: context.bodySmall,
            hintStyle: context.bodyMedium.copyWith(color: context.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: context.primaryColor,
                width: 0.8,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none,
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: context.primaryColor,
                width: 0.8,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: context.red,
                width: 0.8,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: context.red,
                width: 0.8,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PhoneCountry extends StatelessWidget {
  const PhoneCountry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.primaryColorLight,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(6),
            bottomLeft: Radius.circular(6),
          )),
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "+234",
            style: context.bodyMedium,
          ),
        ],
      ),
    );
  }
}
