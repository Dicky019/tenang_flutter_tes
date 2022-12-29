// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoctorResponse _$DoctorResponseFromJson(Map<String, dynamic> json) {
  return _DoctorResponse.fromJson(json);
}

/// @nodoc
mixin _$DoctorResponse {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "website")
  String? get website => throw _privateConstructorUsedError;
  @JsonKey(name: "company")
  CompanyResponse? get companyResponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorResponseCopyWith<DoctorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorResponseCopyWith<$Res> {
  factory $DoctorResponseCopyWith(
          DoctorResponse value, $Res Function(DoctorResponse) then) =
      _$DoctorResponseCopyWithImpl<$Res, DoctorResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "website") String? website,
      @JsonKey(name: "company") CompanyResponse? companyResponse});

  $CompanyResponseCopyWith<$Res>? get companyResponse;
}

/// @nodoc
class _$DoctorResponseCopyWithImpl<$Res, $Val extends DoctorResponse>
    implements $DoctorResponseCopyWith<$Res> {
  _$DoctorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? companyResponse = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      companyResponse: freezed == companyResponse
          ? _value.companyResponse
          : companyResponse // ignore: cast_nullable_to_non_nullable
              as CompanyResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyResponseCopyWith<$Res>? get companyResponse {
    if (_value.companyResponse == null) {
      return null;
    }

    return $CompanyResponseCopyWith<$Res>(_value.companyResponse!, (value) {
      return _then(_value.copyWith(companyResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DoctorResponseCopyWith<$Res>
    implements $DoctorResponseCopyWith<$Res> {
  factory _$$_DoctorResponseCopyWith(
          _$_DoctorResponse value, $Res Function(_$_DoctorResponse) then) =
      __$$_DoctorResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "website") String? website,
      @JsonKey(name: "company") CompanyResponse? companyResponse});

  @override
  $CompanyResponseCopyWith<$Res>? get companyResponse;
}

/// @nodoc
class __$$_DoctorResponseCopyWithImpl<$Res>
    extends _$DoctorResponseCopyWithImpl<$Res, _$_DoctorResponse>
    implements _$$_DoctorResponseCopyWith<$Res> {
  __$$_DoctorResponseCopyWithImpl(
      _$_DoctorResponse _value, $Res Function(_$_DoctorResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? companyResponse = freezed,
  }) {
    return _then(_$_DoctorResponse(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      companyResponse: freezed == companyResponse
          ? _value.companyResponse
          : companyResponse // ignore: cast_nullable_to_non_nullable
              as CompanyResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DoctorResponse implements _DoctorResponse {
  _$_DoctorResponse(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "website") this.website,
      @JsonKey(name: "company") this.companyResponse});

  factory _$_DoctorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DoctorResponseFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "website")
  final String? website;
  @override
  @JsonKey(name: "company")
  final CompanyResponse? companyResponse;

  @override
  String toString() {
    return 'DoctorResponse(name: $name, username: $username, email: $email, phone: $phone, website: $website, companyResponse: $companyResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoctorResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.companyResponse, companyResponse) ||
                other.companyResponse == companyResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, username, email, phone, website, companyResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoctorResponseCopyWith<_$_DoctorResponse> get copyWith =>
      __$$_DoctorResponseCopyWithImpl<_$_DoctorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoctorResponseToJson(
      this,
    );
  }
}

abstract class _DoctorResponse implements DoctorResponse {
  factory _DoctorResponse(
          {@JsonKey(name: "name") final String? name,
          @JsonKey(name: "username") final String? username,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "phone") final String? phone,
          @JsonKey(name: "website") final String? website,
          @JsonKey(name: "company") final CompanyResponse? companyResponse}) =
      _$_DoctorResponse;

  factory _DoctorResponse.fromJson(Map<String, dynamic> json) =
      _$_DoctorResponse.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "website")
  String? get website;
  @override
  @JsonKey(name: "company")
  CompanyResponse? get companyResponse;
  @override
  @JsonKey(ignore: true)
  _$$_DoctorResponseCopyWith<_$_DoctorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyResponse _$CompanyResponseFromJson(Map<String, dynamic> json) {
  return _CompanyResponse.fromJson(json);
}

/// @nodoc
mixin _$CompanyResponse {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "catchPhrase")
  String? get catchPhrase => throw _privateConstructorUsedError;
  @JsonKey(name: "bs")
  String? get bs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyResponseCopyWith<CompanyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyResponseCopyWith<$Res> {
  factory $CompanyResponseCopyWith(
          CompanyResponse value, $Res Function(CompanyResponse) then) =
      _$CompanyResponseCopyWithImpl<$Res, CompanyResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "catchPhrase") String? catchPhrase,
      @JsonKey(name: "bs") String? bs});
}

/// @nodoc
class _$CompanyResponseCopyWithImpl<$Res, $Val extends CompanyResponse>
    implements $CompanyResponseCopyWith<$Res> {
  _$CompanyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      catchPhrase: freezed == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      bs: freezed == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompanyResponseCopyWith<$Res>
    implements $CompanyResponseCopyWith<$Res> {
  factory _$$_CompanyResponseCopyWith(
          _$_CompanyResponse value, $Res Function(_$_CompanyResponse) then) =
      __$$_CompanyResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "catchPhrase") String? catchPhrase,
      @JsonKey(name: "bs") String? bs});
}

/// @nodoc
class __$$_CompanyResponseCopyWithImpl<$Res>
    extends _$CompanyResponseCopyWithImpl<$Res, _$_CompanyResponse>
    implements _$$_CompanyResponseCopyWith<$Res> {
  __$$_CompanyResponseCopyWithImpl(
      _$_CompanyResponse _value, $Res Function(_$_CompanyResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_$_CompanyResponse(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      catchPhrase: freezed == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      bs: freezed == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyResponse implements _CompanyResponse {
  _$_CompanyResponse(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "catchPhrase") this.catchPhrase,
      @JsonKey(name: "bs") this.bs});

  factory _$_CompanyResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyResponseFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "catchPhrase")
  final String? catchPhrase;
  @override
  @JsonKey(name: "bs")
  final String? bs;

  @override
  String toString() {
    return 'CompanyResponse(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.catchPhrase, catchPhrase) ||
                other.catchPhrase == catchPhrase) &&
            (identical(other.bs, bs) || other.bs == bs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, catchPhrase, bs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyResponseCopyWith<_$_CompanyResponse> get copyWith =>
      __$$_CompanyResponseCopyWithImpl<_$_CompanyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyResponseToJson(
      this,
    );
  }
}

abstract class _CompanyResponse implements CompanyResponse {
  factory _CompanyResponse(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "catchPhrase") final String? catchPhrase,
      @JsonKey(name: "bs") final String? bs}) = _$_CompanyResponse;

  factory _CompanyResponse.fromJson(Map<String, dynamic> json) =
      _$_CompanyResponse.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "catchPhrase")
  String? get catchPhrase;
  @override
  @JsonKey(name: "bs")
  String? get bs;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyResponseCopyWith<_$_CompanyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
