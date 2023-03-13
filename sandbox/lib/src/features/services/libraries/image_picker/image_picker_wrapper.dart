import "dart:io";

import "package:image_picker/image_picker.dart";

class ImagePickerWrapper {
  final ImagePicker _picker = ImagePicker();

  Future<File?> getImage({
    required bool isFromLibrary,
  }) async {
    final XFile? image = await _picker.pickImage(
      source: isFromLibrary ? ImageSource.gallery : ImageSource.camera,
    );

    if (image == null) return null;

    // create file from this
    final File imageFile = File(image.path);

    return imageFile;
  }
}
