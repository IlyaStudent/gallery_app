// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../autentithication_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

LoginDTO _$LoginDTOFromJson(Map<String, dynamic> json) {
  return _LoginDTO.fromJson(json);
}

/// @nodoc
mixin _$LoginDTO {
  String get grantType => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get clientSecret => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDTOCopyWith<LoginDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDTOCopyWith<$Res> {
  factory $LoginDTOCopyWith(LoginDTO value, $Res Function(LoginDTO) then) =
      _$LoginDTOCopyWithImpl<$Res, LoginDTO>;
  @useResult
  $Res call(
      {String grantType,
      String username,
      String password,
      String clientId,
      String clientSecret});
}

/// @nodoc
class _$LoginDTOCopyWithImpl<$Res, $Val extends LoginDTO>
    implements $LoginDTOCopyWith<$Res> {
  _$LoginDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = null,
    Object? username = null,
    Object? password = null,
    Object? clientId = null,
    Object? clientSecret = null,
  }) {
    return _then(_value.copyWith(
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginDTOImplCopyWith<$Res>
    implements $LoginDTOCopyWith<$Res> {
  factory _$$LoginDTOImplCopyWith(
          _$LoginDTOImpl value, $Res Function(_$LoginDTOImpl) then) =
      __$$LoginDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String grantType,
      String username,
      String password,
      String clientId,
      String clientSecret});
}

/// @nodoc
class __$$LoginDTOImplCopyWithImpl<$Res>
    extends _$LoginDTOCopyWithImpl<$Res, _$LoginDTOImpl>
    implements _$$LoginDTOImplCopyWith<$Res> {
  __$$LoginDTOImplCopyWithImpl(
      _$LoginDTOImpl _value, $Res Function(_$LoginDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = null,
    Object? username = null,
    Object? password = null,
    Object? clientId = null,
    Object? clientSecret = null,
  }) {
    return _then(_$LoginDTOImpl(
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDTOImpl implements _LoginDTO {
  const _$LoginDTOImpl(
      {this.grantType = StringConsts.grantTypePassword,
      required this.username,
      required this.password,
      this.clientId = StringConsts.clientId,
      this.clientSecret = StringConsts.clientSecret});

  factory _$LoginDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDTOImplFromJson(json);

  @override
  @JsonKey()
  final String grantType;
  @override
  final String username;
  @override
  final String password;
  @override
  @JsonKey()
  final String clientId;
  @override
  @JsonKey()
  final String clientSecret;

  @override
  String toString() {
    return 'LoginDTO(grantType: $grantType, username: $username, password: $password, clientId: $clientId, clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDTOImpl &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, grantType, username, password, clientId, clientSecret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDTOImplCopyWith<_$LoginDTOImpl> get copyWith =>
      __$$LoginDTOImplCopyWithImpl<_$LoginDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDTOImplToJson(
      this,
    );
  }
}

abstract class _LoginDTO implements LoginDTO {
  const factory _LoginDTO(
      {final String grantType,
      required final String username,
      required final String password,
      final String clientId,
      final String clientSecret}) = _$LoginDTOImpl;

  factory _LoginDTO.fromJson(Map<String, dynamic> json) =
      _$LoginDTOImpl.fromJson;

  @override
  String get grantType;
  @override
  String get username;
  @override
  String get password;
  @override
  String get clientId;
  @override
  String get clientSecret;
  @override
  @JsonKey(ignore: true)
  _$$LoginDTOImplCopyWith<_$LoginDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
