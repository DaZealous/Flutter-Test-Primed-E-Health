import 'package:flutter/cupertino.dart';
import 'package:flutter_assessment/presentation/auth/login/state/login_screen_state.dart';
import 'package:flutter_assessment/routes/routes.dart';
import 'package:flutter_assessment/utils/validators.dart';
import 'package:flutter_assessment/widgets/custom_dialogs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreenController extends StateNotifier<LoginScreenState> {
  LoginScreenController() : super(LoginScreenState());

  // Toggle the visibility of the password
  void togglePasswordVisibility() {
    state = state.copyWith(isPasswordVisible: !state.isPasswordVisible);
  }

  // Toggle the "Remember Me" checkbox
  void toggleRememberMe() {
    state = state.copyWith(rememberMe: !state.rememberMe);
  }

  // Toggle the "Valid Password" checkbox
  void updatePasswordValid(String? value) {
    state = state.copyWith(passwordValid: Validator.password(value) == null);
  }

  void navigateToHome(BuildContext context) {
    CustomDialogs.showLoadingBar(context);
    Future.delayed(const Duration(seconds: 5)).whenComplete((){
      if(context.mounted) {
        Navigator.of(context).pop();
        Navigator.of(context).pushReplacementNamed(AppRoutes.homeScreen);
      }
    });
  }
}