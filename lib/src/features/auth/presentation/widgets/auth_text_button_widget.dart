import 'package:flutter/material.dart';

class AuthTextButtonWidget extends StatelessWidget {
  const AuthTextButtonWidget({
    Key? key,
    required this.onTap,
    required this.title,
    required this.textStyle,
  }) : super(key: key);

  final void Function() onTap;
  final String title;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
