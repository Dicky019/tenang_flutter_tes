import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../features/auth/data/response/user_response.dart';
import '../config/firebase/firebase_result.dart';

class AuthFirebase {
  final _firebaseAuth = FirebaseAuth.instance;

  User? get getCurentUser => _firebaseAuth.currentUser;

  Future<FirebaseResult<User?>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return FirebaseResult.successFirebase(response.user);
    } on FirebaseAuthException catch (e, st) {
      return FirebaseResult.failureFirebase(
        e,
        st,
      );
    }
  }

  Future<FirebaseResult<User?>> signIn(
      {required String email, required String password}) async {
    try {
      final response = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return FirebaseResult.successFirebase(response.user);
    } on FirebaseAuthException catch (e, st) {
      return FirebaseResult.failureFirebase(
        e,
        st,
      );
    }
  }

  Future google() async {
    try {} catch (e) {}
  }

  Future signOut() async {
    try {
      final response = await _firebaseAuth.signOut();
      return FirebaseResult.successFirebase(
        response,
      );
    } on FirebaseAuthException catch (e, st) {
      return FirebaseResult.failureFirebase(
        e,
        st,
      );
    }
  }

  FirebaseResult<UserResponse> loginResponse() {
    try {
      return FirebaseResult.successFirebase(UserResponse(
        avatar: getCurentUser?.photoURL,
        email: getCurentUser?.email,
        username: getCurentUser?.displayName,
      ));
    } on FirebaseAuthException catch (e, st) {
      return FirebaseResult.failureFirebase(
        e,
        st,
      );
    }
  }

  Future<void> get reload => _firebaseAuth.currentUser!.reload();
}

final auhtFirebaseProvider = Provider<AuthFirebase>((ref) {
  return AuthFirebase(
  );
});
