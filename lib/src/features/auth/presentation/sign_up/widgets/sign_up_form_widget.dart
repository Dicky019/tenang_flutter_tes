// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';

import '../../../../../common_widgets/common_widgets.dart';
import '../../../../../constants/constants.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
     required this.email, required this.password, required this.fullName,
  }) : super(key: key);

  final TextEditingController fullName,email,password;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFieldWidget(
          textEditingController: fullName,
          hintText: 'Full Name',
        ),
        Gap.customGapHeight(15),
        TextFieldWidget(
          textEditingController: email,
          hintText: 'Email',
        ),
        Gap.customGapHeight(15),
        TextFieldWidget(
          textEditingController: password,
          hintText: 'Password',
        ),
      ],
    );
  }
}
