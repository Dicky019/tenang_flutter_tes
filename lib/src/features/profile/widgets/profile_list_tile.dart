import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constants.dart';

class ProfileListTile extends StatelessWidget {
  final String? name;
  final IconData icon;
  final Color color;

  const ProfileListTile({
    super.key,
    this.name,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    const nameDefault = "...";
    return SizedBox(
      height: 44,
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeApp.customWidth(10),
                  vertical: SizeApp.customHeight(10),
                ),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Icon(icon),
                ),
              ),
              const Spacer(),
              Text(
                name ?? nameDefault,
                style: TypographyApp.body.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
