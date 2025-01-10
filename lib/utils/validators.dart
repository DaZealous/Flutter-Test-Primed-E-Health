import 'package:flutter/material.dart';

class Validator {
  static String? validateEmail(String? value) {
    if(value == null || value.isEmpty){
      return 'Email cannot be empty';
    }
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value) ? 'Invalid email' : null;
  }

  static String? emptyField(
    BuildContext context,
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    final trimmedValue = value.trimRight();
    if (trimmedValue.isEmpty) {
      return 'Cannot be empty';
    }
    return null;
  }

  static String? optFiled(
    BuildContext context,
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    final trimmedValue = value.trimRight();
    if (trimmedValue.length < 4) {
      return 'fillBlank';
    }
    return null;
  }

  static String? phoneValidator(BuildContext context, String? value) {
    if (value == null || value.isEmpty) return 'writePhoneNumber';

    final trimmedValue = value.trim();
    if (value.length >= 2 || trimmedValue.length < 8) {
      const allowedPhonePrefixes = ['60', '61', '62', '63', '64', '65', '70', '71', '67'];
      if (allowedPhonePrefixes.contains(value.substring(0, 2))) {
        return null;
      }
    }
    return 'incorrectPhoneNumber';
  }

  static String? confirmPassword(BuildContext context, bool? value) {
    if (value!) {
      return null;
    }
    return 'Invalid password, try again';
  }

  static String? password(String? value) {
    if(value == null || value.isEmpty){
      return '';
      // return 'Password cannot be empty';
    }
    if (value.length >= 8) {
      return null;
    }
    return '';
    // return 'Password must be 8 characters above';
  }
}
