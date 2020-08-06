import 'dart:io';
import '../import.dart';

class ImagePickerService {
  // Returns a [File] object pointing to the image that was picked.
  Future<File> pickImage({@required ImageSource source}) async {
    // ignore: deprecated_member_use
    return ImagePicker.pickImage(source: source);
  }
}

