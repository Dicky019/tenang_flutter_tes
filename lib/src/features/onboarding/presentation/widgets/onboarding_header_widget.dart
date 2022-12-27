import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/constants.dart';

class OnboardingHeaderWidget extends StatelessWidget {
  const OnboardingHeaderWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    this.isLast = false, required this.onTap,
  }) : super(key: key);

  final String title, subTitle;
  final bool isLast;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: SizeApp.customHeight(400),
          width: SizeApp.customWidth(375),
          decoration: BoxDecoration(
            color: ColorApp.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.r),
              bottomRight: Radius.circular(50.r),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TypographyApp.title1.copyWith(fontSize: 30.sp),
              ),
              Gap.customGapHeight(22),
              Text(
                subTitle,
                style: TypographyApp.body,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        if (isLast)
           Positioned(
            bottom: 35,
            left: 30,
            right: 30,
            child: ButtonWidget(
             onTap: onTap
            ),
          )
      ],
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key, this.onTap,
    // required this.padding,
  }) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        borderRadius: BorderRadius.circular(25.r),
        color: ColorApp.primaryColor,
        child: SizedBox(
          width: SizeApp.fullWidth(context),
          height: SizeApp.customWidth(50),
          child: Center(
            child: Text(
              "Continue",
              style: TypographyApp.body.copyWith(
                fontWeight: FontWeight.bold,
                color: ColorApp.primaryButtonColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
