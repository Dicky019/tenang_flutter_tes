
import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';
import 'auth_text_button_widget.dart';

class AuthTextBottomWidget extends StatelessWidget {
  const AuthTextBottomWidget({
    Key? key, required this.title, required this.subTitle, required this.onTap,
  }) : super(key: key);

  final String title,subTitle;
  final  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TypographyApp.body,
        ),
        AuthTextButtonWidget(
          onTap: onTap,
          title: subTitle,
          textStyle: TypographyApp.body.copyWith(
            color: ColorApp.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}