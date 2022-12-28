import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tenang_flutter_tes/src/constants/constants.dart';

import '../../../gen/assets.gen.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.validator,
    this.isPassword = false,
  }) : icon = null;

  const TextFieldWidget.withIcon({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.validator,
    this.isPassword = false,
    required this.icon,
  });

  final TextEditingController textEditingController;
  final String hintText;
  final String? Function(String?)? validator;
  final bool isPassword;
  final SvgGenImage? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeApp.customHeight(50),
      child: TextFormField(
        controller: textEditingController,
        validator: validator,
        obscureText: isPassword,
        obscuringCharacter: "*",
        style: TypographyApp.body,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide.none,
          ),
          counterStyle: TypographyApp.body,
          fillColor: ColorApp.primaryBackgroundColor,
          filled: true,
          prefixIcon: icon != null
              ? Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeApp.w20,
                    vertical: SizeApp.h16,
                  ),
                  child: icon!.svg(),
                )
              : null,
          contentPadding: EdgeInsets.symmetric(
            horizontal: SizeApp.w20,
          ),
          hintText: hintText,
          hintStyle: TypographyApp.body.copyWith(
            color: ColorApp.secondaryTextColor,
          ),
        ),
      ),
    );
  }
}
