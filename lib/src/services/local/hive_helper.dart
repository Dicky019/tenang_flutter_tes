

import 'package:hive_flutter/hive_flutter.dart';

import '../../constants/keys/hive_key.dart';

Future<void> hiveInit() async {
  await Hive.initFlutter();
  await Hive.openBox<bool>(HiveKey.isOnboardingDoneBox);
  await Hive.openBox<String>(HiveKey.fullNameBox);
}

Future<void> hiveClose() async {
  await Hive.close();
}
