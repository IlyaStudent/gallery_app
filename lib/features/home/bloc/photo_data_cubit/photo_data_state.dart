part of '../../home_part.dart';

@freezed
class PhotoDataState with _$PhotoDataState {
  const factory PhotoDataState.initial() = _PhotoDataInitial;
  const factory PhotoDataState.loading() = _PhotoDataLoading;
  const factory PhotoDataState.loaded({
    required PhotoModel photoModel,
  }) = _PhotoDataLoaded;
  const factory PhotoDataState.error() = _PhotoDataError;
}
