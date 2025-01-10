class LoginScreenState {
  final bool isPasswordVisible;
  final bool rememberMe;
  final bool passwordValid;

  LoginScreenState({
    this.isPasswordVisible = false,
    this.rememberMe = false,
    this.passwordValid = false,
  });

  LoginScreenState copyWith({
    bool? isPasswordVisible,
    bool? rememberMe,
    bool? passwordValid,
  }) {
    return LoginScreenState(
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      rememberMe: rememberMe ?? this.rememberMe,
      passwordValid: passwordValid ?? this.passwordValid,
    );
  }
}