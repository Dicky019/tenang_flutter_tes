import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/config.dart';


class AuthApi {
  final DioClient _dioClient;

  AuthApi(this._dioClient);

  Future<ApiResult<String>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dioClient.post(
        Endpoint.login,
        data: {
          'identifier': email,
          'password': password,
        },
      );
      return ApiResult.success(response['jwt']);
    } catch (e, st) {
      return ApiResult.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  Future<ApiResult<void>> logout() async {
    return const ApiResult.success(null);
  }

  // Future<Result<UserResponse>> loginResponse() async {
  //   try {
  //     final response = await _dioClient.get(Endpoint.login);
  //     return Result.success(UserResponse.fromJson(response['user']));
  //   } catch (e, st) {
  //     return Result.failure(
  //       NetworkExceptions.getDioException(e, st),
  //       st,
  //     );
  //   }
  // }
}

final authApiProvider = Provider<AuthApi>((ref) {
  return AuthApi(ref.read(dioClientProvider));
});
