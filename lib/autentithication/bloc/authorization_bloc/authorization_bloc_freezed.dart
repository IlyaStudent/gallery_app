part of '../../autentithication_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

/// @nodoc
mixin _$AuthorizationEvent {
  LoginDTO get loginDTO => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginDTO loginDTO) authorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginDTO loginDTO)? authorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginDTO loginDTO)? authorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizeEvent value) authorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorizeEvent value)? authorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizeEvent value)? authorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorizationEventCopyWith<AuthorizationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res, AuthorizationEvent>;
  @useResult
  $Res call({LoginDTO loginDTO});
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res, $Val extends AuthorizationEvent>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginDTO = freezed,
  }) {
    return _then(_value.copyWith(
      loginDTO: freezed == loginDTO
          ? _value.loginDTO
          : loginDTO // ignore: cast_nullable_to_non_nullable
              as LoginDTO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorizeEventImplCopyWith<$Res>
    implements $AuthorizationEventCopyWith<$Res> {
  factory _$$AuthorizeEventImplCopyWith(_$AuthorizeEventImpl value,
          $Res Function(_$AuthorizeEventImpl) then) =
      __$$AuthorizeEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginDTO loginDTO});
}

/// @nodoc
class __$$AuthorizeEventImplCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$AuthorizeEventImpl>
    implements _$$AuthorizeEventImplCopyWith<$Res> {
  __$$AuthorizeEventImplCopyWithImpl(
      _$AuthorizeEventImpl _value, $Res Function(_$AuthorizeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginDTO = freezed,
  }) {
    return _then(_$AuthorizeEventImpl(
      loginDTO: freezed == loginDTO
          ? _value.loginDTO
          : loginDTO // ignore: cast_nullable_to_non_nullable
              as LoginDTO,
    ));
  }
}

/// @nodoc

class _$AuthorizeEventImpl implements AuthorizeEvent {
  const _$AuthorizeEventImpl({required this.loginDTO});

  @override
  final LoginDTO loginDTO;

  @override
  String toString() {
    return 'AuthorizationEvent.authorize(loginDTO: $loginDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizeEventImpl &&
            const DeepCollectionEquality().equals(other.loginDTO, loginDTO));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loginDTO));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizeEventImplCopyWith<_$AuthorizeEventImpl> get copyWith =>
      __$$AuthorizeEventImplCopyWithImpl<_$AuthorizeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginDTO loginDTO) authorize,
  }) {
    return authorize(loginDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginDTO loginDTO)? authorize,
  }) {
    return authorize?.call(loginDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginDTO loginDTO)? authorize,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(loginDTO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizeEvent value) authorize,
  }) {
    return authorize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorizeEvent value)? authorize,
  }) {
    return authorize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizeEvent value)? authorize,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(this);
    }
    return orElse();
  }
}

abstract class AuthorizeEvent implements AuthorizationEvent {
  const factory AuthorizeEvent({required final LoginDTO loginDTO}) =
      _$AuthorizeEventImpl;

  @override
  LoginDTO get loginDTO;
  @override
  @JsonKey(ignore: true)
  _$$AuthorizeEventImplCopyWith<_$AuthorizeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? erorMessage) initial,
    required TResult Function() loading,
    required TResult Function() authotized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? erorMessage)? initial,
    TResult? Function()? loading,
    TResult? Function()? authotized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? erorMessage)? initial,
    TResult Function()? loading,
    TResult Function()? authotized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationInitialState value) initial,
    required TResult Function(_AuthorizationLoadingState value) loading,
    required TResult Function(_AuthorizationAuthorizedState value) authotized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationInitialState value)? initial,
    TResult? Function(_AuthorizationLoadingState value)? loading,
    TResult? Function(_AuthorizationAuthorizedState value)? authotized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationInitialState value)? initial,
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(_AuthorizationAuthorizedState value)? authotized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res, AuthorizationState>;
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res, $Val extends AuthorizationState>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthorizationInitialStateImplCopyWith<$Res> {
  factory _$$AuthorizationInitialStateImplCopyWith(
          _$AuthorizationInitialStateImpl value,
          $Res Function(_$AuthorizationInitialStateImpl) then) =
      __$$AuthorizationInitialStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? erorMessage});
}

/// @nodoc
class __$$AuthorizationInitialStateImplCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res,
        _$AuthorizationInitialStateImpl>
    implements _$$AuthorizationInitialStateImplCopyWith<$Res> {
  __$$AuthorizationInitialStateImplCopyWithImpl(
      _$AuthorizationInitialStateImpl _value,
      $Res Function(_$AuthorizationInitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? erorMessage = freezed,
  }) {
    return _then(_$AuthorizationInitialStateImpl(
      erorMessage: freezed == erorMessage
          ? _value.erorMessage
          : erorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthorizationInitialStateImpl implements _AuthorizationInitialState {
  const _$AuthorizationInitialStateImpl({this.erorMessage});

  @override
  final String? erorMessage;

  @override
  String toString() {
    return 'AuthorizationState.initial(erorMessage: $erorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizationInitialStateImpl &&
            (identical(other.erorMessage, erorMessage) ||
                other.erorMessage == erorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizationInitialStateImplCopyWith<_$AuthorizationInitialStateImpl>
      get copyWith => __$$AuthorizationInitialStateImplCopyWithImpl<
          _$AuthorizationInitialStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? erorMessage) initial,
    required TResult Function() loading,
    required TResult Function() authotized,
  }) {
    return initial(erorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? erorMessage)? initial,
    TResult? Function()? loading,
    TResult? Function()? authotized,
  }) {
    return initial?.call(erorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? erorMessage)? initial,
    TResult Function()? loading,
    TResult Function()? authotized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(erorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationInitialState value) initial,
    required TResult Function(_AuthorizationLoadingState value) loading,
    required TResult Function(_AuthorizationAuthorizedState value) authotized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationInitialState value)? initial,
    TResult? Function(_AuthorizationLoadingState value)? loading,
    TResult? Function(_AuthorizationAuthorizedState value)? authotized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationInitialState value)? initial,
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(_AuthorizationAuthorizedState value)? authotized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationInitialState implements AuthorizationState {
  const factory _AuthorizationInitialState({final String? erorMessage}) =
      _$AuthorizationInitialStateImpl;

  String? get erorMessage;
  @JsonKey(ignore: true)
  _$$AuthorizationInitialStateImplCopyWith<_$AuthorizationInitialStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorizationLoadingStateImplCopyWith<$Res> {
  factory _$$AuthorizationLoadingStateImplCopyWith(
          _$AuthorizationLoadingStateImpl value,
          $Res Function(_$AuthorizationLoadingStateImpl) then) =
      __$$AuthorizationLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorizationLoadingStateImplCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res,
        _$AuthorizationLoadingStateImpl>
    implements _$$AuthorizationLoadingStateImplCopyWith<$Res> {
  __$$AuthorizationLoadingStateImplCopyWithImpl(
      _$AuthorizationLoadingStateImpl _value,
      $Res Function(_$AuthorizationLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthorizationLoadingStateImpl implements _AuthorizationLoadingState {
  const _$AuthorizationLoadingStateImpl();

  @override
  String toString() {
    return 'AuthorizationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizationLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? erorMessage) initial,
    required TResult Function() loading,
    required TResult Function() authotized,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? erorMessage)? initial,
    TResult? Function()? loading,
    TResult? Function()? authotized,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? erorMessage)? initial,
    TResult Function()? loading,
    TResult Function()? authotized,
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
    required TResult Function(_AuthorizationInitialState value) initial,
    required TResult Function(_AuthorizationLoadingState value) loading,
    required TResult Function(_AuthorizationAuthorizedState value) authotized,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationInitialState value)? initial,
    TResult? Function(_AuthorizationLoadingState value)? loading,
    TResult? Function(_AuthorizationAuthorizedState value)? authotized,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationInitialState value)? initial,
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(_AuthorizationAuthorizedState value)? authotized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationLoadingState implements AuthorizationState {
  const factory _AuthorizationLoadingState() = _$AuthorizationLoadingStateImpl;
}

/// @nodoc
abstract class _$$AuthorizationAuthorizedStateImplCopyWith<$Res> {
  factory _$$AuthorizationAuthorizedStateImplCopyWith(
          _$AuthorizationAuthorizedStateImpl value,
          $Res Function(_$AuthorizationAuthorizedStateImpl) then) =
      __$$AuthorizationAuthorizedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorizationAuthorizedStateImplCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res,
        _$AuthorizationAuthorizedStateImpl>
    implements _$$AuthorizationAuthorizedStateImplCopyWith<$Res> {
  __$$AuthorizationAuthorizedStateImplCopyWithImpl(
      _$AuthorizationAuthorizedStateImpl _value,
      $Res Function(_$AuthorizationAuthorizedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthorizationAuthorizedStateImpl
    implements _AuthorizationAuthorizedState {
  const _$AuthorizationAuthorizedStateImpl();

  @override
  String toString() {
    return 'AuthorizationState.authotized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizationAuthorizedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? erorMessage) initial,
    required TResult Function() loading,
    required TResult Function() authotized,
  }) {
    return authotized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? erorMessage)? initial,
    TResult? Function()? loading,
    TResult? Function()? authotized,
  }) {
    return authotized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? erorMessage)? initial,
    TResult Function()? loading,
    TResult Function()? authotized,
    required TResult orElse(),
  }) {
    if (authotized != null) {
      return authotized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationInitialState value) initial,
    required TResult Function(_AuthorizationLoadingState value) loading,
    required TResult Function(_AuthorizationAuthorizedState value) authotized,
  }) {
    return authotized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationInitialState value)? initial,
    TResult? Function(_AuthorizationLoadingState value)? loading,
    TResult? Function(_AuthorizationAuthorizedState value)? authotized,
  }) {
    return authotized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationInitialState value)? initial,
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(_AuthorizationAuthorizedState value)? authotized,
    required TResult orElse(),
  }) {
    if (authotized != null) {
      return authotized(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationAuthorizedState implements AuthorizationState {
  const factory _AuthorizationAuthorizedState() =
      _$AuthorizationAuthorizedStateImpl;
}
