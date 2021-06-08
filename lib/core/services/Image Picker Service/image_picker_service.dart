import 'dart:io';

abstract class ImagePickerService {
  Future<File> pickImageFromCamera();

  Future<File> pickImageFromGallery();
}
