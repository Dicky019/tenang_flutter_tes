
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';
import 'profile_list_tile.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
    required this.imageUrl,
    required this.fullName,
    required this.email,
    required this.logout,
  }) : super(key: key);

  final String? imageUrl, fullName, email;
  final VoidCallback logout;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PaddingWidget(
        child: Column(
          children: [
            Gap.customGapHeight(45),
            Text(
              "Profile",
              style: TypographyApp.title,
            ),
            Gap.customGapHeight(45),
            AvatarWidget(
              imageUrl: imageUrl,
            ),
            Gap.customGapHeight(45),
            CardWidget(
              border: 18.r,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeApp.customWidth(10),
                  vertical: SizeApp.customHeight(10),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap.h8,
                    Text(
                      "INFORMATION",
                      style: TypographyApp.body.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap.h12,
                    ProfileListTile(
                      icon: CupertinoIcons.person_solid,
                      color: ColorApp.primaryBackgroundColor,
                      name: fullName,
                    ),
                    Gap.h20,
                    ProfileListTile(
                      icon: CupertinoIcons.mail_solid,
                      color: ColorApp.primaryBackgroundColor,
                      name: email,
                    ),
                    Gap.h8,
                  ],
                ),
              ),
            ),
            Gap.h36,
            ButtonWidget(
              onTap: logout,
              title: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}
