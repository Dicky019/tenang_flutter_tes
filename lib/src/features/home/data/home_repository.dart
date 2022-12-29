import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tenang_flutter_tes/src/services/remote/api/api.dart';
import 'package:tenang_flutter_tes/src/services/remote/api/config/api_result.dart';

import 'response/doctor_response.dart';

class HomeRepository {
  final DoctorApi _doctorApi;

  HomeRepository(
    this._doctorApi,
  );

  Future<ApiResult<List<DoctorResponse>?>> getDoctors() =>
      _doctorApi.getDoctors();
}

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  final doctorApi = ref.read(doctorApiProvider);
  return HomeRepository(doctorApi);
});
