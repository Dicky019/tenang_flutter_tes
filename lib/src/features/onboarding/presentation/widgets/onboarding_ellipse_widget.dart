import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/constants.dart';

class OnboardingEllipseWidget extends StatelessWidget {
  const OnboardingEllipseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeApp.customWidth(283),
      height: SizeApp.customHeight(283),
      decoration: BoxDecoration(
        color: ColorApp.white.withOpacity(0.07),
        borderRadius: BorderRadius.circular((283 / 2).r),
      ),
    );
  }
}
