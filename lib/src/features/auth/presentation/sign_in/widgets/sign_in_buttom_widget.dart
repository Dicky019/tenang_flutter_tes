import 'package:flutter/material.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../../../../common_widgets/common_widgets.dart';
import '../../../../../constants/constants.dart';
import '../../widgets/auth_widgets.dart';
import 'sign_in_widgets.dart';

class SignInButtomWidget extends StatelessWidget {
  const SignInButtomWidget({
    super.key,
    required this.onTapSignIn,
    required this.onTapGoogle,
    required this.onTapApple,
    required this.onTapFacebook,
    this.isLoadingSignIn = false,
    this.isLoadingGoogle = false,
    this.isLoadingApple = false,
    this.isLoadingFacebook = false,
  });

  final void Function() onTapSignIn, onTapGoogle, onTapApple, onTapFacebook;
  final bool isLoadingSignIn,
      isLoadingGoogle,
      isLoadingApple,
      isLoadingFacebook;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AuthTextButtonWidget(
              onTap: () {},
              textStyle: TypographyApp.body.copyWith(
                color: ColorApp.primaryColor,
              ),
              title: 'Forgot Password?',
            ),
          ],
        ),
        Gap.customGapHeight(18),
        ButtonWidget(
          title: "Sign in",
          onTap: onTapSignIn,
          isLoading: isLoadingSignIn,
        ),
        Gap.customGapHeight(15),
        Text(
          "/",
          style: TypographyApp.body.copyWith(
            color: ColorApp.secondaryTextColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        Gap.customGapHeight(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButtonWidget(
              icon: Assets.icons.iconGoogle,
              onTap: onTapGoogle,
            ),
            Gap.customGapWidth(30),
            SignInButtonWidget(
              icon: Assets.icons.iconApple,
              onTap: onTapApple,
            ),
            Gap.customGapWidth(30),
            SignInButtonWidget(
              icon: Assets.icons.iconFacebook,
              onTap: onTapFacebook,
            ),
          ],
        )
      ],
    );
  }
}
