import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tenang_flutter_tes/gen/assets.gen.dart';
import 'package:tenang_flutter_tes/src/routing/app_route.dart';
import '../domain/onboarding.dart';
import 'onboarding_state.dart';

class OnboardingControllerNotifier extends StateNotifier<OnboardingState> {
  OnboardingControllerNotifier() : super(const OnboardingState());

  final pageController = PageController();

  final listOnboarding = [
    Onboarding(
      title: "Welcome to Alesha",
      image: Assets.images.medicalResearch,
      imageWidth: 444,
      imageHeight: 300,
    ),
    Onboarding(
      title: "Find Best Doctors",
      image: Assets.images.medicine,
      imageWidth: 503,
      imageHeight: 355,
    ),
    Onboarding(
      title: "Get Fitness Trips",
      image: Assets.images.yoga,
      imageHeight: 272,
      imageWidth: 248,
    ),
  ];

  void onPageChanged(int index) {
    state = state.copyWith(value: AsyncData(index));
    log("$index && ${state.value.value}", name: "onPageChanged");
  }

  void toHome(BuildContext context) {
    context.pushReplacement(
      RouteApp.home.path,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

final onboardingControllerProvider =
    StateNotifierProvider<OnboardingControllerNotifier, OnboardingState>(
  (ref) {
    return OnboardingControllerNotifier();
  },
);
