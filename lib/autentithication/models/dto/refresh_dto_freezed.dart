// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../autentithication_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

RefreshDTO _$RefreshDTOFromJson(Map<String, dynamic> json) {
  return _RefreshDTO.fromJson(json);
}

/// @nodoc
mixin _$RefreshDTO {
  String get grantType => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get clientSecret => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshDTOCopyWith<RefreshDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshDTOCopyWith<$Res> {
  factory $RefreshDTOCopyWith(
          RefreshDTO value, $Res Function(RefreshDTO) then) =
      _$RefreshDTOCopyWithImpl<$Res, RefreshDTO>;
  @useResult
  $Res call(
      {String grantType,
      String refreshToken,
      String clientId,
      String clientSecret});
}

/// @nodoc
class _$RefreshDTOCopyWithImpl<$Res, $Val extends RefreshDTO>
    implements $RefreshDTOCopyWith<$Res> {
  _$RefreshDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = null,
    Object? refreshToken = null,
    Object? clientId = null,
    Object? clientSecret = null,
  }) {
    return _then(_value.copyWith(
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RefreshDTOImplCopyWith<$Res>
    implements $RefreshDTOCopyWith<$Res> {
  factory _$$RefreshDTOImplCopyWith(
          _$RefreshDTOImpl value, $Res Function(_$RefreshDTOImpl) then) =
      __$$RefreshDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String grantType,
      String refreshToken,
      String clientId,
      String clientSecret});
}

/// @nodoc
class __$$RefreshDTOImplCopyWithImpl<$Res>
    extends _$RefreshDTOCopyWithImpl<$Res, _$RefreshDTOImpl>
    implements _$$RefreshDTOImplCopyWith<$Res> {
  __$$RefreshDTOImplCopyWithImpl(
      _$RefreshDTOImpl _value, $Res Function(_$RefreshDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = null,
    Object? refreshToken = null,
    Object? clientId = null,
    Object? clientSecret = null,
  }) {
    return _then(_$RefreshDTOImpl(
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
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
class _$RefreshDTOImpl implements _RefreshDTO {
  const _$RefreshDTOImpl(
      {this.grantType = StringConsts.grantTypeRefresh,
      required this.refreshToken,
      this.clientId = StringConsts.clientId,
      this.clientSecret = StringConsts.clientSecret});

  factory _$RefreshDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshDTOImplFromJson(json);

  @override
  @JsonKey()
  final String grantType;
  @override
  final String refreshToken;
  @override
  @JsonKey()
  final String clientId;
  @override
  @JsonKey()
  final String clientSecret;

  @override
  String toString() {
    return 'RefreshDTO(grantType: $grantType, refreshToken: $refreshToken, clientId: $clientId, clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshDTOImpl &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, grantType, refreshToken, clientId, clientSecret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshDTOImplCopyWith<_$RefreshDTOImpl> get copyWith =>
      __$$RefreshDTOImplCopyWithImpl<_$RefreshDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshDTOImplToJson(
      this,
    );
  }
}

abstract class _RefreshDTO implements RefreshDTO {
  const factory _RefreshDTO(
      {final String grantType,
      required final String refreshToken,
      final String clientId,
      final String clientSecret}) = _$RefreshDTOImpl;

  factory _RefreshDTO.fromJson(Map<String, dynamic> json) =
      _$RefreshDTOImpl.fromJson;

  @override
  String get grantType;
  @override
  String get refreshToken;
  @override
  String get clientId;
  @override
  String get clientSecret;
  @override
  @JsonKey(ignore: true)
  _$$RefreshDTOImplCopyWith<_$RefreshDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
