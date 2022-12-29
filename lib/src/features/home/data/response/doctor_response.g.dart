// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DoctorResponse _$$_DoctorResponseFromJson(Map<String, dynamic> json) =>
    _$_DoctorResponse(
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      website: json['website'] as String?,
      companyResponse: json['company'] == null
          ? null
          : CompanyResponse.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DoctorResponseToJson(_$_DoctorResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.companyResponse,
    };

_$_CompanyResponse _$$_CompanyResponseFromJson(Map<String, dynamic> json) =>
    _$_CompanyResponse(
      name: json['name'] as String?,
      catchPhrase: json['catchPhrase'] as String?,
      bs: json['bs'] as String?,
    );

Map<String, dynamic> _$$_CompanyResponseToJson(_$_CompanyResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
