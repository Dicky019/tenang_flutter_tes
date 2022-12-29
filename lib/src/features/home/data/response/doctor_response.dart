import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_response.freezed.dart';
part 'doctor_response.g.dart';

@freezed
class DoctorResponse with _$DoctorResponse {
  factory DoctorResponse({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "website") String? website,
    @JsonKey(name: "company") CompanyResponse? companyResponse,
  }) = _DoctorResponse;

  factory DoctorResponse.fromJson(Map<String, dynamic> json) =>
      _$DoctorResponseFromJson(json);
}

@freezed
class CompanyResponse with _$CompanyResponse {
  factory CompanyResponse({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "catchPhrase") String? catchPhrase,
    @JsonKey(name: "bs") String? bs,
  }) = _CompanyResponse;

  factory CompanyResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyResponseFromJson(json);
}
