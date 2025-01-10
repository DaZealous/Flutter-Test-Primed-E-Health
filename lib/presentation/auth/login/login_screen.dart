import 'package:flutter/material.dart';
import 'package:flutter_assessment/core/animation/animation_service.dart';
import 'package:flutter_assessment/presentation/auth/login/state/login_screen_state.dart';
import 'package:flutter_assessment/utils/theme.dart';
import 'package:flutter_assessment/utils/validators.dart';
import 'package:flutter_assessment/widgets/field_text.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'controller/login_screen_controller.dart';

class LoginScreen extends HookConsumerWidget {
  LoginScreen({super.key});

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final loginScreenControllerProvider =
      StateNotifierProvider<LoginScreenController, LoginScreenState>(
    (ref) => LoginScreenController(),
  );

  final animationService = GetIt.I<AnimationService>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final state = ref.watch(loginScreenControllerProvider);
    final controller = ref.read(loginScreenControllerProvider.notifier);

    final slideUpController =
    useAnimationController(duration: const Duration(milliseconds: 1500));
    final slideUpAnimation = animationService.createSlideAnimation(slideUpController, 0.0, 1.0);

    useEffect(() {
      Future.delayed(
        const Duration(milliseconds: 1000),
      ).whenComplete(() => slideUpController.forward());
      return null;
    }, []);


    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Form(
        key: formKey,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              child:
                  Image.asset('assets/images/user_settings_top_background.png'),
            ),
            Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 85),
                      // AppIcons.logoWhite.svgPicture(),
                      Text(
                        'Welcome Back!',
                        style: textTheme.displayMedium?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Please login to continue',
                        style: textTheme.labelMedium?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 24),
                // const Spacer(),
                Column(
                  children: [
                    SlideTransition(
                      position: slideUpAnimation,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(32),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            children: [
                              const SizedBox(height: 16),
                              FieldText(
                                labelText: 'Email address',
                                hintText: 'Input your registered email or phone ',
                                controller: emailController,
                                onChanged: (String? value){
                                  formKey.currentState?.validate();
                                },
                                validator: (value) =>
                                    Validator.validateEmail(value),
                              ),
                              const SizedBox(height: 24),
                              FieldText(
                                hintText: 'Input your password account',
                                labelText: 'Password',
                                onChanged: (String? value){
                                  formKey.currentState?.validate();
                                  controller.updatePasswordValid(value);
                                },
                                obscureText: !state.isPasswordVisible,
                                onTogglePasscodeVisibilityTap:
                                    controller.togglePasswordVisibility,
                                controller: passwordController,
                                validator: (value) => Validator.password(value),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              _buildPasswordErrorWidget(textTheme, state),
                              const SizedBox(height: 14),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Checkbox(
                                    activeColor: AppColors.primary,
                                    value: state.rememberMe,
                                    onChanged: (value) =>
                                        controller.toggleRememberMe(),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Remember Me',
                                      style: textTheme.labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 14),
                              ElevatedButton(
                                onPressed: () {
                                  if(formKey.currentState?.validate() ?? false){
                                    controller.navigateToHome(context);
                                  }
                                },
                                child: Text(
                                  'Login',
                                  style: textTheme.labelLarge,
                                ),
                              ),
                              const SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordErrorWidget(textTheme, state) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                color: state.passwordValid
                    ? Colors.green
                    : Colors.red,
                shape: BoxShape.circle),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            'At least 8 characters',
            style: textTheme.labelMedium?.copyWith(
              color: state.passwordValid
                  ? Colors.green
                  : Colors.red,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(
            state.passwordValid
                ? Icons.check
                : Icons.close,
            color: state.passwordValid
                ? Colors.green
                : Colors.red,
            size: 20,
          )
        ],
      ),
    );
  }
}
