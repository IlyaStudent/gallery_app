// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../autentithication_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

RegDTO _$RegDTOFromJson(Map<String, dynamic> json) {
  return _RegDTO.fromJson(json);
}

/// @nodoc
mixin _$RegDTO {
  String? get plainPassword => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get confirmPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegDTOCopyWith<RegDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegDTOCopyWith<$Res> {
  factory $RegDTOCopyWith(RegDTO value, $Res Function(RegDTO) then) =
      _$RegDTOCopyWithImpl<$Res, RegDTO>;
  @useResult
  $Res call(
      {String? plainPassword,
      String? email,
      String? birthday,
      String? displayName,
      String? confirmPassword});
}

/// @nodoc
class _$RegDTOCopyWithImpl<$Res, $Val extends RegDTO>
    implements $RegDTOCopyWith<$Res> {
  _$RegDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plainPassword = freezed,
    Object? email = freezed,
    Object? birthday = freezed,
    Object? displayName = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      plainPassword: freezed == plainPassword
          ? _value.plainPassword
          : plainPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegDTOImplCopyWith<$Res> implements $RegDTOCopyWith<$Res> {
  factory _$$RegDTOImplCopyWith(
          _$RegDTOImpl value, $Res Function(_$RegDTOImpl) then) =
      __$$RegDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? plainPassword,
      String? email,
      String? birthday,
      String? displayName,
      String? confirmPassword});
}

/// @nodoc
class __$$RegDTOImplCopyWithImpl<$Res>
    extends _$RegDTOCopyWithImpl<$Res, _$RegDTOImpl>
    implements _$$RegDTOImplCopyWith<$Res> {
  __$$RegDTOImplCopyWithImpl(
      _$RegDTOImpl _value, $Res Function(_$RegDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plainPassword = freezed,
    Object? email = freezed,
    Object? birthday = freezed,
    Object? displayName = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_$RegDTOImpl(
      plainPassword: freezed == plainPassword
          ? _value.plainPassword
          : plainPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegDTOImpl implements _RegDTO {
  const _$RegDTOImpl(
      {this.plainPassword,
      this.email,
      this.birthday,
      this.displayName,
      this.confirmPassword});

  factory _$RegDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegDTOImplFromJson(json);

  @override
  final String? plainPassword;
  @override
  final String? email;
  @override
  final String? birthday;
  @override
  final String? displayName;
  @override
  final String? confirmPassword;

  @override
  String toString() {
    return 'RegDTO(plainPassword: $plainPassword, email: $email, birthday: $birthday, displayName: $displayName, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegDTOImpl &&
            (identical(other.plainPassword, plainPassword) ||
                other.plainPassword == plainPassword) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plainPassword, email, birthday,
      displayName, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegDTOImplCopyWith<_$RegDTOImpl> get copyWith =>
      __$$RegDTOImplCopyWithImpl<_$RegDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegDTOImplToJson(
      this,
    );
  }
}

abstract class _RegDTO implements RegDTO {
  const factory _RegDTO(
      {final String? plainPassword,
      final String? email,
      final String? birthday,
      final String? displayName,
      final String? confirmPassword}) = _$RegDTOImpl;

  factory _RegDTO.fromJson(Map<String, dynamic> json) = _$RegDTOImpl.fromJson;

  @override
  String? get plainPassword;
  @override
  String? get email;
  @override
  String? get birthday;
  @override
  String? get displayName;
  @override
  String? get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$RegDTOImplCopyWith<_$RegDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
