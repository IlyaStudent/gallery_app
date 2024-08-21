part of '../code_kit.dart';

class ImagePickerHelper {
  static Future<Map<String, File>?> pickImageFromGallery() async {
    final XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    return (pickedFile != null)
        ? {
            pickedFile.name: File(pickedFile.path),
          }
        : null;
  }
}
