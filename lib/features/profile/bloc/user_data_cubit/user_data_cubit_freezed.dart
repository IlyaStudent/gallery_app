// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../profile_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Uint8List? userPhoto, UserModel userModel) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Uint8List? userPhoto, UserModel userModel)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Uint8List? userPhoto, UserModel userModel)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDataLoading value) loading,
    required TResult Function(_UserDataLoaded value) loaded,
    required TResult Function(_UserDataError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserDataLoading value)? loading,
    TResult? Function(_UserDataLoaded value)? loaded,
    TResult? Function(_UserDataError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDataLoading value)? loading,
    TResult Function(_UserDataLoaded value)? loaded,
    TResult Function(_UserDataError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataStateCopyWith<$Res> {
  factory $UserDataStateCopyWith(
          UserDataState value, $Res Function(UserDataState) then) =
      _$UserDataStateCopyWithImpl<$Res, UserDataState>;
}

/// @nodoc
class _$UserDataStateCopyWithImpl<$Res, $Val extends UserDataState>
    implements $UserDataStateCopyWith<$Res> {
  _$UserDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserDataLoadingImplCopyWith<$Res> {
  factory _$$UserDataLoadingImplCopyWith(_$UserDataLoadingImpl value,
          $Res Function(_$UserDataLoadingImpl) then) =
      __$$UserDataLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDataLoadingImplCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$UserDataLoadingImpl>
    implements _$$UserDataLoadingImplCopyWith<$Res> {
  __$$UserDataLoadingImplCopyWithImpl(
      _$UserDataLoadingImpl _value, $Res Function(_$UserDataLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserDataLoadingImpl implements _UserDataLoading {
  const _$UserDataLoadingImpl();

  @override
  String toString() {
    return 'UserDataState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDataLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Uint8List? userPhoto, UserModel userModel) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Uint8List? userPhoto, UserModel userModel)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Uint8List? userPhoto, UserModel userModel)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDataLoading value) loading,
    required TResult Function(_UserDataLoaded value) loaded,
    required TResult Function(_UserDataError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserDataLoading value)? loading,
    TResult? Function(_UserDataLoaded value)? loaded,
    TResult? Function(_UserDataError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDataLoading value)? loading,
    TResult Function(_UserDataLoaded value)? loaded,
    TResult Function(_UserDataError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserDataLoading implements UserDataState {
  const factory _UserDataLoading() = _$UserDataLoadingImpl;
}

/// @nodoc
abstract class _$$UserDataLoadedImplCopyWith<$Res> {
  factory _$$UserDataLoadedImplCopyWith(_$UserDataLoadedImpl value,
          $Res Function(_$UserDataLoadedImpl) then) =
      __$$UserDataLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List? userPhoto, UserModel userModel});
}

/// @nodoc
class __$$UserDataLoadedImplCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$UserDataLoadedImpl>
    implements _$$UserDataLoadedImplCopyWith<$Res> {
  __$$UserDataLoadedImplCopyWithImpl(
      _$UserDataLoadedImpl _value, $Res Function(_$UserDataLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPhoto = freezed,
    Object? userModel = null,
  }) {
    return _then(_$UserDataLoadedImpl(
      userPhoto: freezed == userPhoto
          ? _value.userPhoto
          : userPhoto // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$UserDataLoadedImpl implements _UserDataLoaded {
  const _$UserDataLoadedImpl({this.userPhoto, required this.userModel});

  @override
  final Uint8List? userPhoto;
  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UserDataState.loaded(userPhoto: $userPhoto, userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataLoadedImpl &&
            const DeepCollectionEquality().equals(other.userPhoto, userPhoto) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userPhoto), userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataLoadedImplCopyWith<_$UserDataLoadedImpl> get copyWith =>
      __$$UserDataLoadedImplCopyWithImpl<_$UserDataLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Uint8List? userPhoto, UserModel userModel) loaded,
    required TResult Function() error,
  }) {
    return loaded(userPhoto, userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Uint8List? userPhoto, UserModel userModel)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(userPhoto, userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Uint8List? userPhoto, UserModel userModel)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userPhoto, userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDataLoading value) loading,
    required TResult Function(_UserDataLoaded value) loaded,
    required TResult Function(_UserDataError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserDataLoading value)? loading,
    TResult? Function(_UserDataLoaded value)? loaded,
    TResult? Function(_UserDataError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDataLoading value)? loading,
    TResult Function(_UserDataLoaded value)? loaded,
    TResult Function(_UserDataError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _UserDataLoaded implements UserDataState {
  const factory _UserDataLoaded(
      {final Uint8List? userPhoto,
      required final UserModel userModel}) = _$UserDataLoadedImpl;

  Uint8List? get userPhoto;
  UserModel get userModel;
  @JsonKey(ignore: true)
  _$$UserDataLoadedImplCopyWith<_$UserDataLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDataErrorImplCopyWith<$Res> {
  factory _$$UserDataErrorImplCopyWith(
          _$UserDataErrorImpl value, $Res Function(_$UserDataErrorImpl) then) =
      __$$UserDataErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDataErrorImplCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$UserDataErrorImpl>
    implements _$$UserDataErrorImplCopyWith<$Res> {
  __$$UserDataErrorImplCopyWithImpl(
      _$UserDataErrorImpl _value, $Res Function(_$UserDataErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserDataErrorImpl implements _UserDataError {
  const _$UserDataErrorImpl();

  @override
  String toString() {
    return 'UserDataState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDataErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Uint8List? userPhoto, UserModel userModel) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Uint8List? userPhoto, UserModel userModel)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Uint8List? userPhoto, UserModel userModel)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDataLoading value) loading,
    required TResult Function(_UserDataLoaded value) loaded,
    required TResult Function(_UserDataError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserDataLoading value)? loading,
    TResult? Function(_UserDataLoaded value)? loaded,
    TResult? Function(_UserDataError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDataLoading value)? loading,
    TResult Function(_UserDataLoaded value)? loaded,
    TResult Function(_UserDataError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UserDataError implements UserDataState {
  const factory _UserDataError() = _$UserDataErrorImpl;
}
