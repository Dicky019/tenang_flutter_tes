import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'sign_in_controller.dart';
import 'widgets/sign_in_widgets.dart';

class SignInScreen extends ConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(signInControllerProvider.notifier);
    final state = ref.watch(signInControllerProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SignInWidget(
          title: 'Welcome back!',
          subTitle: 'sign in to continue.',
          titleTextBottom: 'Do not have account? ',
          subTitleTextBottom: 'Sign up!',
          onTapTextBottom: () => controller.toSignUp(context),
          onTapApple: () {},
          onTapFacebook: () {},
          onTapGoogle: () {},
          onTapSignIn: () async => await controller.signIn(context),
          emailC: controller.emailC,
          passwordC: controller.passwordC,
          isLoadingSignIn: state.isLoading,
          isLoadingApple: state.isLoading,
          isLoadingFacebook: state.isLoading,
          isLoadingGoogle: state.isLoading,
        ),
      ),
    );
  }
}
