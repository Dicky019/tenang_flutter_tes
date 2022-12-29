import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../features/home/data/response/doctor_response.dart';

import 'config/api_config.dart';

class DoctorApi {
  final DioClient _dioClient;

  DoctorApi(this._dioClient);

  Future<ApiResult<List<DoctorResponse>?>> getDoctors() async {
    try {
      final response = await _dioClient.get<List>(
        Endpoint.getDoctors,
      );

      return ApiResult.success(
        response?.map((e) => DoctorResponse.fromJson(e)).toList(),
      );
    } catch (e, st) {
      return ApiResult.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }
}

final doctorApiProvider = Provider<DoctorApi>((ref) {
  return DoctorApi(ref.read(dioClientProvider));
});
