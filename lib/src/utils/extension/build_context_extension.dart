import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../routing/app_route.dart';

extension XBuildContext on BuildContext {
  void goToHomeScreen(WidgetRef ref) {
    goNamed(RouteApp.init.name);
  }
}
