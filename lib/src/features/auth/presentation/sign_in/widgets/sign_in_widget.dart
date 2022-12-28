import 'package:flutter/material.dart';

import '../../../../../common_widgets/common_widgets.dart';
import '../../../../../constants/constants.dart';
import 'sign_in_widgets.dart';
import '../../widgets/auth_widgets.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({
    Key? key,
    required this.onTapTextBottom,
    required this.onTapSignIn,
    required this.onTapGoogle,
    required this.onTapApple,
    required this.onTapFacebook,
    required this.title,
    required this.subTitle,
    required this.titleTextBottom,
    required this.subTitleTextBottom,
    required this.emailC,
    required this.passwordC,
    required this.isLoadingSignIn, required this.isLoadingGoogle, required this.isLoadingApple, required this.isLoadingFacebook,
  }) : super(key: key);

  final void Function() onTapTextBottom,
      onTapSignIn,
      onTapGoogle,
      onTapApple,
      onTapFacebook;
  final String title, subTitle;
  final String titleTextBottom, subTitleTextBottom;
  final TextEditingController emailC, passwordC;
  final bool isLoadingSignIn,
      isLoadingGoogle,
      isLoadingApple,
      isLoadingFacebook;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeApp.w40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap.customGapHeight(53),
            const Center(
              child: IconAppWidget(
                color: ColorApp.primaryColor,
              ),
            ),
            Gap.h40,
            const AuthTextWidget(
              title: 'Welcome back!',
              subTitle: 'sign in to continue.',
            ),
            Gap.h40,
            // form
            SignInFormWidget(
              emailC: emailC,
              passwordC: passwordC,

            ),
            Gap.customGapHeight(18),
            SignInButtomWidget(
              onTapSignIn: onTapSignIn,
              onTapApple: onTapApple,
              onTapFacebook: onTapFacebook,
              onTapGoogle: onTapGoogle,
              isLoadingSignIn: isLoadingSignIn,
              isLoadingApple: isLoadingApple,
              isLoadingFacebook: isLoadingFacebook,
              isLoadingGoogle: isLoadingGoogle,
            ),
            const Spacer(),
            AuthTextBottomWidget(
              title: 'Do not have account? ',
              subTitle: 'Sign up!',
              onTap: onTapTextBottom,
            ),
            Gap.h28,
          ],
        ),
      ),
    );
  }
}
