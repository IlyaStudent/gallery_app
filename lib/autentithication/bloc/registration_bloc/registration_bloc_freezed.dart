// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../autentithication_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String changedFieldName, String changedFieldText)
        changeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String changedFieldName, String changedFieldText)?
        changeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String changedFieldName, String changedFieldText)?
        changeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEvent value) register,
    required TResult Function(ChangeDataEvent value) changeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(ChangeDataEvent value)? changeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEvent value)? register,
    TResult Function(ChangeDataEvent value)? changeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterEventImplCopyWith<$Res> {
  factory _$$RegisterEventImplCopyWith(
          _$RegisterEventImpl value, $Res Function(_$RegisterEventImpl) then) =
      __$$RegisterEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterEventImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$RegisterEventImpl>
    implements _$$RegisterEventImplCopyWith<$Res> {
  __$$RegisterEventImplCopyWithImpl(
      _$RegisterEventImpl _value, $Res Function(_$RegisterEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterEventImpl implements RegisterEvent {
  const _$RegisterEventImpl();

  @override
  String toString() {
    return 'RegistrationEvent.register()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String changedFieldName, String changedFieldText)
        changeData,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String changedFieldName, String changedFieldText)?
        changeData,
  }) {
    return register?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String changedFieldName, String changedFieldText)?
        changeData,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEvent value) register,
    required TResult Function(ChangeDataEvent value) changeData,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(ChangeDataEvent value)? changeData,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEvent value)? register,
    TResult Function(ChangeDataEvent value)? changeData,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class RegisterEvent implements RegistrationEvent {
  const factory RegisterEvent() = _$RegisterEventImpl;
}

/// @nodoc
abstract class _$$ChangeDataEventImplCopyWith<$Res> {
  factory _$$ChangeDataEventImplCopyWith(_$ChangeDataEventImpl value,
          $Res Function(_$ChangeDataEventImpl) then) =
      __$$ChangeDataEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String changedFieldName, String changedFieldText});
}

/// @nodoc
class __$$ChangeDataEventImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$ChangeDataEventImpl>
    implements _$$ChangeDataEventImplCopyWith<$Res> {
  __$$ChangeDataEventImplCopyWithImpl(
      _$ChangeDataEventImpl _value, $Res Function(_$ChangeDataEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changedFieldName = null,
    Object? changedFieldText = null,
  }) {
    return _then(_$ChangeDataEventImpl(
      changedFieldName: null == changedFieldName
          ? _value.changedFieldName
          : changedFieldName // ignore: cast_nullable_to_non_nullable
              as String,
      changedFieldText: null == changedFieldText
          ? _value.changedFieldText
          : changedFieldText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeDataEventImpl implements ChangeDataEvent {
  const _$ChangeDataEventImpl(
      {required this.changedFieldName, required this.changedFieldText});

  @override
  final String changedFieldName;
  @override
  final String changedFieldText;

  @override
  String toString() {
    return 'RegistrationEvent.changeData(changedFieldName: $changedFieldName, changedFieldText: $changedFieldText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDataEventImpl &&
            (identical(other.changedFieldName, changedFieldName) ||
                other.changedFieldName == changedFieldName) &&
            (identical(other.changedFieldText, changedFieldText) ||
                other.changedFieldText == changedFieldText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, changedFieldName, changedFieldText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDataEventImplCopyWith<_$ChangeDataEventImpl> get copyWith =>
      __$$ChangeDataEventImplCopyWithImpl<_$ChangeDataEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String changedFieldName, String changedFieldText)
        changeData,
  }) {
    return changeData(changedFieldName, changedFieldText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String changedFieldName, String changedFieldText)?
        changeData,
  }) {
    return changeData?.call(changedFieldName, changedFieldText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String changedFieldName, String changedFieldText)?
        changeData,
    required TResult orElse(),
  }) {
    if (changeData != null) {
      return changeData(changedFieldName, changedFieldText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEvent value) register,
    required TResult Function(ChangeDataEvent value) changeData,
  }) {
    return changeData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(ChangeDataEvent value)? changeData,
  }) {
    return changeData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEvent value)? register,
    TResult Function(ChangeDataEvent value)? changeData,
    required TResult orElse(),
  }) {
    if (changeData != null) {
      return changeData(this);
    }
    return orElse();
  }
}

abstract class ChangeDataEvent implements RegistrationEvent {
  const factory ChangeDataEvent(
      {required final String changedFieldName,
      required final String changedFieldText}) = _$ChangeDataEventImpl;

  String get changedFieldName;
  String get changedFieldText;
  @JsonKey(ignore: true)
  _$$ChangeDataEventImplCopyWith<_$ChangeDataEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RegistrationErrorDTO regErrorDTO, RegistrationDTO regDTO)
        checking,
    required TResult Function() regLoading,
    required TResult Function() regisetered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationErrorDTO regErrorDTO, RegistrationDTO regDTO)?
        checking,
    TResult? Function()? regLoading,
    TResult? Function()? regisetered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationErrorDTO regErrorDTO, RegistrationDTO regDTO)?
        checking,
    TResult Function()? regLoading,
    TResult Function()? regisetered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegDataChecking value) checking,
    required TResult Function(_RegLoadingState value) regLoading,
    required TResult Function(_RegisteredState value) regisetered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegDataChecking value)? checking,
    TResult? Function(_RegLoadingState value)? regLoading,
    TResult? Function(_RegisteredState value)? regisetered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegDataChecking value)? checking,
    TResult Function(_RegLoadingState value)? regLoading,
    TResult Function(_RegisteredState value)? regisetered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegDataCheckingImplCopyWith<$Res> {
  factory _$$RegDataCheckingImplCopyWith(_$RegDataCheckingImpl value,
          $Res Function(_$RegDataCheckingImpl) then) =
      __$$RegDataCheckingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegistrationErrorDTO regErrorDTO, RegistrationDTO regDTO});
}

/// @nodoc
class __$$RegDataCheckingImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegDataCheckingImpl>
    implements _$$RegDataCheckingImplCopyWith<$Res> {
  __$$RegDataCheckingImplCopyWithImpl(
      _$RegDataCheckingImpl _value, $Res Function(_$RegDataCheckingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regErrorDTO = null,
    Object? regDTO = null,
  }) {
    return _then(_$RegDataCheckingImpl(
      regErrorDTO: null == regErrorDTO
          ? _value.regErrorDTO
          : regErrorDTO // ignore: cast_nullable_to_non_nullable
              as RegistrationErrorDTO,
      regDTO: null == regDTO
          ? _value.regDTO
          : regDTO // ignore: cast_nullable_to_non_nullable
              as RegistrationDTO,
    ));
  }
}

/// @nodoc

class _$RegDataCheckingImpl implements _RegDataChecking {
  const _$RegDataCheckingImpl(
      {required this.regErrorDTO, required this.regDTO});

  @override
  final RegistrationErrorDTO regErrorDTO;
  @override
  final RegistrationDTO regDTO;

  @override
  String toString() {
    return 'RegistrationState.checking(regErrorDTO: $regErrorDTO, regDTO: $regDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegDataCheckingImpl &&
            (identical(other.regErrorDTO, regErrorDTO) ||
                other.regErrorDTO == regErrorDTO) &&
            (identical(other.regDTO, regDTO) || other.regDTO == regDTO));
  }

  @override
  int get hashCode => Object.hash(runtimeType, regErrorDTO, regDTO);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegDataCheckingImplCopyWith<_$RegDataCheckingImpl> get copyWith =>
      __$$RegDataCheckingImplCopyWithImpl<_$RegDataCheckingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RegistrationErrorDTO regErrorDTO, RegistrationDTO regDTO)
        checking,
    required TResult Function() regLoading,
    required TResult Function() regisetered,
  }) {
    return checking(regErrorDTO, regDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationErrorDTO regErrorDTO, RegistrationDTO regDTO)?
        checking,
    TResult? Function()? regLoading,
    TResult? Function()? regisetered,
  }) {
    return checking?.call(regErrorDTO, regDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationErrorDTO regErrorDTO, RegistrationDTO regDTO)?
        checking,
    TResult Function()? regLoading,
    TResult Function()? regisetered,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(regErrorDTO, regDTO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegDataChecking value) checking,
    required TResult Function(_RegLoadingState value) regLoading,
    required TResult Function(_RegisteredState value) regisetered,
  }) {
    return checking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegDataChecking value)? checking,
    TResult? Function(_RegLoadingState value)? regLoading,
    TResult? Function(_RegisteredState value)? regisetered,
  }) {
    return checking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegDataChecking value)? checking,
    TResult Function(_RegLoadingState value)? regLoading,
    TResult Function(_RegisteredState value)? regisetered,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(this);
    }
    return orElse();
  }
}

abstract class _RegDataChecking implements RegistrationState {
  const factory _RegDataChecking(
      {required final RegistrationErrorDTO regErrorDTO,
      required final RegistrationDTO regDTO}) = _$RegDataCheckingImpl;

  RegistrationErrorDTO get regErrorDTO;
  RegistrationDTO get regDTO;
  @JsonKey(ignore: true)
  _$$RegDataCheckingImplCopyWith<_$RegDataCheckingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegLoadingStateImplCopyWith<$Res> {
  factory _$$RegLoadingStateImplCopyWith(_$RegLoadingStateImpl value,
          $Res Function(_$RegLoadingStateImpl) then) =
      __$$RegLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegLoadingStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegLoadingStateImpl>
    implements _$$RegLoadingStateImplCopyWith<$Res> {
  __$$RegLoadingStateImplCopyWithImpl(
      _$RegLoadingStateImpl _value, $Res Function(_$RegLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegLoadingStateImpl implements _RegLoadingState {
  const _$RegLoadingStateImpl();

  @override
  String toString() {
    return 'RegistrationState.regLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RegistrationErrorDTO regErrorDTO, RegistrationDTO regDTO)
        checking,
    required TResult Function() regLoading,
    required TResult Function() regisetered,
  }) {
    return regLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationErrorDTO regErrorDTO, RegistrationDTO regDTO)?
        checking,
    TResult? Function()? regLoading,
    TResult? Function()? regisetered,
  }) {
    return regLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationErrorDTO regErrorDTO, RegistrationDTO regDTO)?
        checking,
    TResult Function()? regLoading,
    TResult Function()? regisetered,
    required TResult orElse(),
  }) {
    if (regLoading != null) {
      return regLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegDataChecking value) checking,
    required TResult Function(_RegLoadingState value) regLoading,
    required TResult Function(_RegisteredState value) regisetered,
  }) {
    return regLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegDataChecking value)? checking,
    TResult? Function(_RegLoadingState value)? regLoading,
    TResult? Function(_RegisteredState value)? regisetered,
  }) {
    return regLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegDataChecking value)? checking,
    TResult Function(_RegLoadingState value)? regLoading,
    TResult Function(_RegisteredState value)? regisetered,
    required TResult orElse(),
  }) {
    if (regLoading != null) {
      return regLoading(this);
    }
    return orElse();
  }
}

abstract class _RegLoadingState implements RegistrationState {
  const factory _RegLoadingState() = _$RegLoadingStateImpl;
}

/// @nodoc
abstract class _$$RegisteredStateImplCopyWith<$Res> {
  factory _$$RegisteredStateImplCopyWith(_$RegisteredStateImpl value,
          $Res Function(_$RegisteredStateImpl) then) =
      __$$RegisteredStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisteredStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegisteredStateImpl>
    implements _$$RegisteredStateImplCopyWith<$Res> {
  __$$RegisteredStateImplCopyWithImpl(
      _$RegisteredStateImpl _value, $Res Function(_$RegisteredStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisteredStateImpl implements _RegisteredState {
  const _$RegisteredStateImpl();

  @override
  String toString() {
    return 'RegistrationState.regisetered()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisteredStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RegistrationErrorDTO regErrorDTO, RegistrationDTO regDTO)
        checking,
    required TResult Function() regLoading,
    required TResult Function() regisetered,
  }) {
    return regisetered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationErrorDTO regErrorDTO, RegistrationDTO regDTO)?
        checking,
    TResult? Function()? regLoading,
    TResult? Function()? regisetered,
  }) {
    return regisetered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationErrorDTO regErrorDTO, RegistrationDTO regDTO)?
        checking,
    TResult Function()? regLoading,
    TResult Function()? regisetered,
    required TResult orElse(),
  }) {
    if (regisetered != null) {
      return regisetered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegDataChecking value) checking,
    required TResult Function(_RegLoadingState value) regLoading,
    required TResult Function(_RegisteredState value) regisetered,
  }) {
    return regisetered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegDataChecking value)? checking,
    TResult? Function(_RegLoadingState value)? regLoading,
    TResult? Function(_RegisteredState value)? regisetered,
  }) {
    return regisetered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegDataChecking value)? checking,
    TResult Function(_RegLoadingState value)? regLoading,
    TResult Function(_RegisteredState value)? regisetered,
    required TResult orElse(),
  }) {
    if (regisetered != null) {
      return regisetered(this);
    }
    return orElse();
  }
}

abstract class _RegisteredState implements RegistrationState {
  const factory _RegisteredState() = _$RegisteredStateImpl;
}
