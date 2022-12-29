import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:tenang_flutter_tes/src/features/auth/application/auth_service.dart';
import '../../../../routing/app_route.dart';
// import '../domain/onboarding.dart';
import '../../../../utils/mixin/validation.dart';
import 'sign_in_state.dart';

class SignInControllerNotifier extends StateNotifier<SignInState>
    with Validation {
  SignInControllerNotifier(this._authService) : super(const SignInState());

  final AuthService _authService;

  final emailC = TextEditingController();
  final passwordC = TextEditingController();

  void toSignUp(BuildContext context) {
    context.push(
      RouteApp.signUp.path,
    );
  }

  Future signIn(BuildContext context) async {
    state = state.copyWith(value: const AsyncLoading());
    final result =
        await _authService.signIn(email: emailC.text, password: passwordC.text);
    result.when(
      successFirebase: (data) {
        state = state.copyWith(value: const AsyncData(true));
        context.pushReplacement(
          RouteApp.dasboard.path,
        );
      },
      failureFirebase: (error, stackTrace) {
        state = state.copyWith(value: AsyncError(error, stackTrace));
      },
    );
  }

  Future google(BuildContext context) async {
    state = state.copyWith(value: const AsyncLoading());
    final result = await _authService.google();
    result.when(
      successFirebase: (data) {
        state = state.copyWith(value: const AsyncData(true));
        context.pushReplacement(
          RouteApp.dasboard.path,
        );
      },
      failureFirebase: (error, stackTrace) {
        state = state.copyWith(value: AsyncError(error, stackTrace));
      },
    );
  }

  @override
  void dispose() {
    emailC.dispose();
    passwordC.dispose();
    super.dispose();
  }
}

final signInControllerProvider =
    StateNotifierProvider<SignInControllerNotifier, SignInState>(
  (ref) {
    return SignInControllerNotifier(ref.read(authServiceProvider));
  },
);
