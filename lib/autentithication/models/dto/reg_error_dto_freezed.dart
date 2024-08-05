// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../autentithication_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

RegErrorDTO _$RegErrorDTOFromJson(Map<String, dynamic> json) {
  return _RegErrorDTO.fromJson(json);
}

/// @nodoc
mixin _$RegErrorDTO {
  bool get dataValid => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get plainPassword => throw _privateConstructorUsedError;
  String? get confirmPassword => throw _privateConstructorUsedError;
  String? get regError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegErrorDTOCopyWith<RegErrorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegErrorDTOCopyWith<$Res> {
  factory $RegErrorDTOCopyWith(
          RegErrorDTO value, $Res Function(RegErrorDTO) then) =
      _$RegErrorDTOCopyWithImpl<$Res, RegErrorDTO>;
  @useResult
  $Res call(
      {bool dataValid,
      String? displayName,
      String? birthday,
      String? email,
      String? plainPassword,
      String? confirmPassword,
      String? regError});
}

/// @nodoc
class _$RegErrorDTOCopyWithImpl<$Res, $Val extends RegErrorDTO>
    implements $RegErrorDTOCopyWith<$Res> {
  _$RegErrorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataValid = null,
    Object? displayName = freezed,
    Object? birthday = freezed,
    Object? email = freezed,
    Object? plainPassword = freezed,
    Object? confirmPassword = freezed,
    Object? regError = freezed,
  }) {
    return _then(_value.copyWith(
      dataValid: null == dataValid
          ? _value.dataValid
          : dataValid // ignore: cast_nullable_to_non_nullable
              as bool,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      plainPassword: freezed == plainPassword
          ? _value.plainPassword
          : plainPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      regError: freezed == regError
          ? _value.regError
          : regError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegErrorDTOImplCopyWith<$Res>
    implements $RegErrorDTOCopyWith<$Res> {
  factory _$$RegErrorDTOImplCopyWith(
          _$RegErrorDTOImpl value, $Res Function(_$RegErrorDTOImpl) then) =
      __$$RegErrorDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool dataValid,
      String? displayName,
      String? birthday,
      String? email,
      String? plainPassword,
      String? confirmPassword,
      String? regError});
}

/// @nodoc
class __$$RegErrorDTOImplCopyWithImpl<$Res>
    extends _$RegErrorDTOCopyWithImpl<$Res, _$RegErrorDTOImpl>
    implements _$$RegErrorDTOImplCopyWith<$Res> {
  __$$RegErrorDTOImplCopyWithImpl(
      _$RegErrorDTOImpl _value, $Res Function(_$RegErrorDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataValid = null,
    Object? displayName = freezed,
    Object? birthday = freezed,
    Object? email = freezed,
    Object? plainPassword = freezed,
    Object? confirmPassword = freezed,
    Object? regError = freezed,
  }) {
    return _then(_$RegErrorDTOImpl(
      dataValid: null == dataValid
          ? _value.dataValid
          : dataValid // ignore: cast_nullable_to_non_nullable
              as bool,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      plainPassword: freezed == plainPassword
          ? _value.plainPassword
          : plainPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      regError: freezed == regError
          ? _value.regError
          : regError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegErrorDTOImpl implements _RegErrorDTO {
  const _$RegErrorDTOImpl(
      {this.dataValid = false,
      this.displayName,
      this.birthday,
      this.email,
      this.plainPassword,
      this.confirmPassword,
      this.regError});

  factory _$RegErrorDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegErrorDTOImplFromJson(json);

  @override
  @JsonKey()
  final bool dataValid;
  @override
  final String? displayName;
  @override
  final String? birthday;
  @override
  final String? email;
  @override
  final String? plainPassword;
  @override
  final String? confirmPassword;
  @override
  final String? regError;

  @override
  String toString() {
    return 'RegErrorDTO(dataValid: $dataValid, displayName: $displayName, birthday: $birthday, email: $email, plainPassword: $plainPassword, confirmPassword: $confirmPassword, regError: $regError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegErrorDTOImpl &&
            (identical(other.dataValid, dataValid) ||
                other.dataValid == dataValid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.plainPassword, plainPassword) ||
                other.plainPassword == plainPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.regError, regError) ||
                other.regError == regError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dataValid, displayName, birthday,
      email, plainPassword, confirmPassword, regError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegErrorDTOImplCopyWith<_$RegErrorDTOImpl> get copyWith =>
      __$$RegErrorDTOImplCopyWithImpl<_$RegErrorDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegErrorDTOImplToJson(
      this,
    );
  }
}

abstract class _RegErrorDTO implements RegErrorDTO {
  const factory _RegErrorDTO(
      {final bool dataValid,
      final String? displayName,
      final String? birthday,
      final String? email,
      final String? plainPassword,
      final String? confirmPassword,
      final String? regError}) = _$RegErrorDTOImpl;

  factory _RegErrorDTO.fromJson(Map<String, dynamic> json) =
      _$RegErrorDTOImpl.fromJson;

  @override
  bool get dataValid;
  @override
  String? get displayName;
  @override
  String? get birthday;
  @override
  String? get email;
  @override
  String? get plainPassword;
  @override
  String? get confirmPassword;
  @override
  String? get regError;
  @override
  @JsonKey(ignore: true)
  _$$RegErrorDTOImplCopyWith<_$RegErrorDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
