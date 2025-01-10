import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assessment/core/utils/assets_data.dart';

class FieldText extends StatelessWidget {
  final String? hintText;
  final bool obscureText;
  final bool? enabled;
  final String? labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController controller;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final VoidCallback? onTogglePasscodeVisibilityTap;
  final int? maxLines;
  final int? maxLength;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;

  const FieldText({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.enabled = true,
    this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    required this.controller,
    this.onChanged,
    this.validator,
    this.onTogglePasscodeVisibilityTap,
    this.maxLines = 1,
    this.maxLength,
    this.textInputType,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      controller: controller,
      onChanged: onChanged,
      enabled: enabled,
      maxLines: maxLines,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        counterText: '',
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: onTogglePasscodeVisibilityTap != null
            ? IconButton(
                onPressed: onTogglePasscodeVisibilityTap,
                icon: obscureText //
                    ? AssetsData.eyeOff.svgPicture()
                    : AssetsData.eye.svgPicture(),
                highlightColor: Colors.transparent,
                padding: EdgeInsets.zero,
              )
            : suffixIcon,
      ),
    );
  }
}
