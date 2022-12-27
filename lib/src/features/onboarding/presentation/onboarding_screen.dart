import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'onboarding_controller.dart';
import 'widgets/onboarding_widgets.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final onboardingController =
        ref.read(onboardingControllerProvider.notifier);

    return Scaffold(
      body: ref.watch(onboardingControllerProvider).value.when(
            data: (data) {
              return OnboardingWidget(
                listOnboarding: onboardingController.listOnboarding,
                pageController: onboardingController.pageController,
                onPageChanged: onboardingController.onPageChanged,
                index: data,
                onTap: () => onboardingController.toHome(context),
              );
            },
            error: (error, stackTrace) => Center(
              child: Text(
                error.toString(),
              ),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}
