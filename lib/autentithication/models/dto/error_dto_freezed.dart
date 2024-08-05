// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../autentithication_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

ErrorDTO _$ErrorDTOFromJson(Map<String, dynamic> json) {
  return _ErrorDTO.fromJson(json);
}

/// @nodoc
mixin _$ErrorDTO {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorDTOCopyWith<ErrorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDTOCopyWith<$Res> {
  factory $ErrorDTOCopyWith(ErrorDTO value, $Res Function(ErrorDTO) then) =
      _$ErrorDTOCopyWithImpl<$Res, ErrorDTO>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$ErrorDTOCopyWithImpl<$Res, $Val extends ErrorDTO>
    implements $ErrorDTOCopyWith<$Res> {
  _$ErrorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorDTOImplCopyWith<$Res>
    implements $ErrorDTOCopyWith<$Res> {
  factory _$$ErrorDTOImplCopyWith(
          _$ErrorDTOImpl value, $Res Function(_$ErrorDTOImpl) then) =
      __$$ErrorDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$ErrorDTOImplCopyWithImpl<$Res>
    extends _$ErrorDTOCopyWithImpl<$Res, _$ErrorDTOImpl>
    implements _$$ErrorDTOImplCopyWith<$Res> {
  __$$ErrorDTOImplCopyWithImpl(
      _$ErrorDTOImpl _value, $Res Function(_$ErrorDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$ErrorDTOImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorDTOImpl implements _ErrorDTO {
  const _$ErrorDTOImpl({required this.title, required this.description});

  factory _$ErrorDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorDTOImplFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'ErrorDTO(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDTOImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDTOImplCopyWith<_$ErrorDTOImpl> get copyWith =>
      __$$ErrorDTOImplCopyWithImpl<_$ErrorDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorDTOImplToJson(
      this,
    );
  }
}

abstract class _ErrorDTO implements ErrorDTO {
  const factory _ErrorDTO(
      {required final String title,
      required final String description}) = _$ErrorDTOImpl;

  factory _ErrorDTO.fromJson(Map<String, dynamic> json) =
      _$ErrorDTOImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ErrorDTOImplCopyWith<_$ErrorDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
