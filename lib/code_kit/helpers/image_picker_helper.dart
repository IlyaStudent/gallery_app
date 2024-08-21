part of '../code_kit.dart';

class ImagePickerHelper {
  final ImagePicker imagePicker = ImagePicker();

  Future<Map<String, File>?> pickImageFromGallery() async {
    final XFile? pickedFile =
        await imagePicker.pickImage(source: ImageSource.gallery);

    return (pickedFile != null)
        ? {
            pickedFile.name: File(pickedFile.path),
          }
        : null;
  }
}
