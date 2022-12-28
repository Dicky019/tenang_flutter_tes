import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tenang_flutter_tes/src/services/remote/config/firebase/firebase_result.dart';

import '../data/auth_repository.dart';

class AuthService {
  final AuthRepository authRepository;

  AuthService(this.authRepository);

  Future<FirebaseResult<void>> signIn({
    required String email,
    required String password,
  }) async {
    final resultLogin = await authRepository.signIn(
      email: email,
      password: password,
    );

    await resultLogin.whenOrNull(
      successFirebase: (data) async {
        await authRepository.reload;
      },
    );

    return resultLogin;
  }

  Future<FirebaseResult<void>> signUp({
    required String email,
    required String password,
    required String fullName,
  }) async {
    final resultLogin = await authRepository.signUp(
      email: email,
      password: password,
    );

    await resultLogin.whenOrNull(
      successFirebase: (data) async {
        await data?.updateDisplayName(fullName);
        await authRepository.reload;
      },
    );

    return resultLogin;
  }

  Future signOut() async => authRepository.signOut();
}

final authServiceProvider = Provider<AuthService>((ref) {
  final authRepository = ref.read(authRepositoryProvider);
  return AuthService(authRepository);
});