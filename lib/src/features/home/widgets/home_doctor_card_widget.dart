
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';

class HomeDoctorCardWidget extends StatelessWidget {
  final double width;
  final double radius;
  final String imageURL;
  final double imageHeight;
  final double imageWidth;
  final String title;
  final String subTitle;

  final Color? titleColor;
  final Color? subTitleColor;

  const HomeDoctorCardWidget({
    super.key,
    this.radius = 14,
    required this.title,
    required this.subTitle,
    this.titleColor,
    this.subTitleColor,
    this.width = 163.0,
    this.imageURL =
        "https://images.pexels.com/photos/2387335/pexels-photo-2387335.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    this.imageHeight = 120.0,
    this.imageWidth = 140.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeApp.customWidth(width),
      child: CardWidget(
        child: Padding(
          padding: EdgeInsets.all(SizeApp.w8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.network(
                  imageURL,
                  fit: BoxFit.cover,
                  height: SizeApp.customHeight(imageHeight),
                  width: SizeApp.customWidth(imageWidth),
                ),
              ),
              Gap.h8,
              Padding(
                padding: EdgeInsets.all(SizeApp.w4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TypographyApp.body.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap.h8,
                    Text(subTitle, style: TypographyApp.body),
                    Gap.h12,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


