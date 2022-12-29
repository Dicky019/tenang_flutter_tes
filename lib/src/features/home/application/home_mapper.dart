import 'package:tenang_flutter_tes/src/features/home/data/response/doctor_response.dart';
import 'package:tenang_flutter_tes/src/features/home/domain/doctor.dart';
import 'package:tenang_flutter_tes/src/services/remote/api/config/api_result.dart';
import '../../../utils/extension/string_extension.dart';

class HomeMapper {
  HomeMapper._();
  static ApiResult<List<Doctor>> mapToDoctor(
      ApiResult<List<DoctorResponse>?> response) {
    return response.when(
      success: (data) {
        return ApiResult.success(
          data
                  ?.map(
                    (e) => Doctor(
                      name: e.name.valueDefault,
                      email: e.email.valueDefault,
                      username: e.username.valueDefault,
                      phone: e.phone.valueDefault,
                      company: Company(
                        name: e.companyResponse?.name ?? '-',
                        bs: e.companyResponse?.bs ?? '-',
                        catchPhrase: e.companyResponse?.catchPhrase ?? '-',
                      ),
                    ),
                  )
                  .toList() ??
              [],
        );
      },
      failure: (error, stackTrace) {
        return ApiResult.failure(error, stackTrace);
      },
    );
  }
}
