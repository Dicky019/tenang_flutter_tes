import 'package:flutter/material.dart';

import '../../../../../common_widgets/common_widgets.dart';
import '../../widgets/auth_widgets.dart';
import 'sign_up_widgets.dart';
import '../../../../../constants/constants.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    super.key,
    required this.fullName,
    required this.email,
    required this.password,
    required this.onTapBack,
    required this.checkboxValue,
    required this.titleButton,
    required this.onTapButton,
    required this.titleTextBottom,
    required this.subTitleTextBottom,
    required this.checkboxoOnChanged,
  });

  final TextEditingController fullName, email, password;
  final void Function() onTapBack;
  final bool checkboxValue;
  final String titleButton;
  final void Function() onTapButton;
  final String titleTextBottom, subTitleTextBottom;
  final void Function(bool?) checkboxoOnChanged;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeApp.w40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap.h40,
            SignUpHeaderWidget(
              onTap: onTapBack,
            ),
            Gap.h40,
            SignUpFormWidget(
              email: email,
              fullName: fullName,
              password: password,
            ),
            Gap.h4,
            SignUpPrivacyPolicy(
              checkboxValue: checkboxValue,
              onChanged: checkboxoOnChanged,
            ),
            Gap.h16,
            ButtonWidget(
              title: titleButton,
              onTap: onTapButton,
            ),
            const Spacer(),
            AuthTextBottomWidget(
              title: 'Already have an account? ',
              subTitle: 'Sign in!',
              onTap: onTapBack,
            ),
            Gap.h28,
          ],
        ),
      ),
    );
  }
}
