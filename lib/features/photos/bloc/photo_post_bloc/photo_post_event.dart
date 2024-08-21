part of '../../photos_part.dart';

@freezed
class PhotoPostEvent with _$PhotoPostEvent {
  const factory PhotoPostEvent.change({
    required String chnagedField,
    required dynamic changedValue,
  }) = _PhotoPostChange;
  const factory PhotoPostEvent.post() = _PhotoPostPost;
  const factory PhotoPostEvent.choosePhoto() = _PhotoPostChoosePhoto;
}
