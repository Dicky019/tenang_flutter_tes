import 'package:flutter/material.dart';
import '../../../../gen/assets.gen.dart';
import '../../../constants/constants.dart';

import '../../../common_widgets/common_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: SizeApp.customWidth(295),
              child: TextFieldWidget(
                textEditingController: TextEditingController(),
                hintText: 'Email', icon: Assets.images.yoga,
              ),
            ),
            Gap.customGapHeight(15),
            SizedBox(
              width: SizeApp.customWidth(295),
              child: TextFieldWidget(
                textEditingController: TextEditingController(),
                hintText: 'Password', icon: Assets.images.medicine,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
