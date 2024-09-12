part of '../../settings_part.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState.loading() = _UserDataLoading;
  const factory UserDataState.loaded({
    Uint8List? userPhoto,
    required UserModel userModel,
  }) = _UserDataLoaded;
  const factory UserDataState.error() = _UserDataError;
}
