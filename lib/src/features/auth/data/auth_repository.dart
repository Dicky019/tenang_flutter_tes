import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../services/remote/firebase/firebase.dart';
import '../../../services/remote/config/config.dart';
import 'response/user_response.dart';

class AuthRepository {
  final AuthFirebase _authApi;

  AuthRepository(
    this._authApi,
  );

  Future<FirebaseResult<User?>> signIn({
    required String email,
    required String password,
  }) async {
    final result = await _authApi.signIn(
      email: email,
      password: password,
    );

    return result;
  }

  Future<FirebaseResult<User?>> signUp({
    required String email,
    required String password,
  }) async {
    final result = await _authApi.signUp(
      email: email,
      password: password,
    );

    return result;
  }

  Future<FirebaseResult<void>> signOut() async {
    final result = await _authApi.signOut();
    return result;
  }

  FirebaseResult<UserResponse> loginResponse()  {
    return _authApi.loginResponse();
  }

  User? get getCurentUser => _authApi.getCurentUser;

  Future<void> get reload => _authApi.reload;

}

final authRepositoryProvider =
    Provider<AuthRepository>((ref) {
  final auhtFirebase = ref.read(auhtFirebaseProvider);
  return AuthRepository(auhtFirebase);
});
