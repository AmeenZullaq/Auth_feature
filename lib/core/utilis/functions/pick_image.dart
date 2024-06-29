import 'dart:io';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/services/get_storage.dart';
import 'package:image_picker/image_picker.dart';

Future pickImage({required ImageSource source}) async {
  ImagePicker imagePicker = ImagePicker();
  File? image;
  var selectedImage = await imagePicker.pickImage(
    source: source,
  );
  if (selectedImage != null) {
    image = File(selectedImage.path);
    getStorage.write(kUserImage, image.path);
  }
}
