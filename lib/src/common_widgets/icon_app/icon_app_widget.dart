import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';
import '../../constants/constants.dart';

class IconAppWidget extends StatelessWidget {
  const IconAppWidget({super.key,  this.color = ColorApp.white});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Assets.images.doctor.svg(
          color: color,
        ),
        Gap.customGapHeight(12.47),
        Text(
          "Alesha",
          style: TypographyApp.title.copyWith(
            fontSize: 50.sp,
            color: color,
          ),
        ),
      ],
    );
  }
}
