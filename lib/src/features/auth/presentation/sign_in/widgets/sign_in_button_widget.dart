
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../../../../constants/constants.dart';

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final SvgGenImage icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        borderRadius: BorderRadius.circular(15.r),
        child: Container(
          width: SizeApp.customWidth(50),
          height: SizeApp.customHeight(50),
          decoration: BoxDecoration(
            border: Border.all(
              width: SizeApp.customWidth(2),
              color: ColorApp.secondaryTextColor,
            ),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Center(
            child: icon.svg(),
          ),
        ),
      ),
    );
  }
}
