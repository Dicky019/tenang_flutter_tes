
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SizeApp.w20),
      decoration: BoxDecoration(
        color: ColorApp.primaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Icon(iconData),
    );
  }
}
