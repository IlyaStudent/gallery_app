part of '../code_kit.dart';

class PostPhotoValidHelper {
  final PostPhotoDTO postPhotoDTO;

  PostPhotoValidHelper({
    required this.postPhotoDTO,
  });

  PostPhotoDTO changeData({
    required String changedField,
    required dynamic changedValue,
  }) {
    final Map<String, dynamic> postData = postPhotoDTO.toJson();
    postData[changedField] = changedValue;
    if (changedField == StringConsts.isNewString ||
        changedField == StringConsts.popular) {
      postData[changedField == StringConsts.isNewString
          ? StringConsts.popular
          : StringConsts.isNewString] = !changedValue;
    }
    return PostPhotoDTO.fromJson(postData);
  }
}
