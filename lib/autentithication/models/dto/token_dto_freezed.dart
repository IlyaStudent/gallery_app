// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../autentithication_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

TokenDTO _$TokenDTOFromJson(Map<String, dynamic> json) {
  return _TokenDTO.fromJson(json);
}

/// @nodoc
mixin _$TokenDTO {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDTOCopyWith<TokenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDTOCopyWith<$Res> {
  factory $TokenDTOCopyWith(TokenDTO value, $Res Function(TokenDTO) then) =
      _$TokenDTOCopyWithImpl<$Res, TokenDTO>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$TokenDTOCopyWithImpl<$Res, $Val extends TokenDTO>
    implements $TokenDTOCopyWith<$Res> {
  _$TokenDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenDTOImplCopyWith<$Res>
    implements $TokenDTOCopyWith<$Res> {
  factory _$$TokenDTOImplCopyWith(
          _$TokenDTOImpl value, $Res Function(_$TokenDTOImpl) then) =
      __$$TokenDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$TokenDTOImplCopyWithImpl<$Res>
    extends _$TokenDTOCopyWithImpl<$Res, _$TokenDTOImpl>
    implements _$$TokenDTOImplCopyWith<$Res> {
  __$$TokenDTOImplCopyWithImpl(
      _$TokenDTOImpl _value, $Res Function(_$TokenDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$TokenDTOImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenDTOImpl implements _TokenDTO {
  const _$TokenDTOImpl({required this.accessToken, required this.refreshToken});

  factory _$TokenDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenDTOImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'TokenDTO(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDTOImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDTOImplCopyWith<_$TokenDTOImpl> get copyWith =>
      __$$TokenDTOImplCopyWithImpl<_$TokenDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenDTOImplToJson(
      this,
    );
  }
}

abstract class _TokenDTO implements TokenDTO {
  const factory _TokenDTO(
      {required final String accessToken,
      required final String refreshToken}) = _$TokenDTOImpl;

  factory _TokenDTO.fromJson(Map<String, dynamic> json) =
      _$TokenDTOImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$TokenDTOImplCopyWith<_$TokenDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
