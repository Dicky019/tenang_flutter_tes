import 'package:flutter/widgets.dart';
import 'package:tenang_flutter_tes/src/constants/constants.dart';

/// [INFO]
/// Constant for shadows to be used in the app with following the design system
class ShadowApp {

  static const dropShadow = BoxShadow(
    color: ColorApp.white,
    blurRadius: 30,
    offset: Offset(0, 0), // changes position of shadow
  );
  
}
