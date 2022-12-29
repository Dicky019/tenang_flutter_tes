import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tenang_flutter_tes/src/features/auth/presentation/sign_up/sign_up_controller.dart';
import 'widgets/sign_up_widgets.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(signUpControllerProvider.notifier);
    final state = ref.watch(signUpControllerProvider);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SignUpWidget(
          fullName: controller.fullNameC,
          email: controller.emailC,
          password: controller.passwordC,
          onTapBack: controller.toSignIn,
          checkboxValue: state.checkboxValue,
          titleButton: "Sign up",
          onTapButton: controller.signUp,
          titleTextBottom: 'Already have an account? ',
          subTitleTextBottom: 'Sign in!',
          checkboxoOnChanged: controller.onChanged,
          validatorEmail: controller.validatorNull,
          validatorFullName: controller.validatorNull,
          validatorPassword: controller.validatorNull,
        ),
      ),
    );
  }
}
