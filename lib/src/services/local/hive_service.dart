import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../constants/keys/hive_key.dart';

class HiveService {
  final hiveIsOnboardingDone = Hive.box<bool>(HiveKey.isOnboardingDoneBox);
  final hiveFullName = Hive.box<String>(HiveKey.fullNameBox);

  /// Set Onboarding Done
  bool get getIsOnboardingDone =>
      hiveIsOnboardingDone.get(
        HiveKey.isOnboardingDoneBox,
      ) ??
      false;

  /// Set Onboarding Done
  void saveOnboardingDone(bool value) => hiveIsOnboardingDone.put(
        HiveKey.isOnboardingDoneBox,
        value,
      );

  String? get getFullName => hiveFullName.get(
        HiveKey.fullNameBox,
      );

  /// Set Onboarding Done
  Future<void> saveFullName(String value) => hiveFullName.put(
        HiveKey.fullNameBox,
        value,
      );

  /// Set Onboarding Done
  Future<void> deleteFullName(String value) => hiveFullName.delete(
        HiveKey.fullNameBox,
      );
}

final hiveServiceProvider = Provider<HiveService>((ref) {
  return HiveService();
});
