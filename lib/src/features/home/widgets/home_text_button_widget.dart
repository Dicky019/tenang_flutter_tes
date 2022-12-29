
import 'package:flutter/cupertino.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';

class HomeTextButtonWidget extends StatelessWidget {
  const HomeTextButtonWidget({
    Key? key,
    required this.titel,
    required this.subTitle,
    required this.onTap,
  }) : super(key: key);

  final String titel, subTitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titel,
          style: TypographyApp.title,
        ),
        const Spacer(),
        ButtonTextWidget(
          onTap: onTap,
          textStyle: TypographyApp.body.copyWith(
            fontWeight: FontWeight.bold,
          ),
          title: subTitle,
        ),
      ],
    );
  }
}
