import 'package:flutter/material.dart';

import '../../widgets/auth_widgets.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        const Spacer(),
        const AuthTextWidget(
          title: 'Sign up',
          subTitle: 'create new account',
          crossAxisAlignment: CrossAxisAlignment.end,
        ),
      ],
    );
  }
}
