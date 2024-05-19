import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:image_picker/image_picker.dart';

class MyImage extends StatefulWidget {
  const MyImage({super.key});

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  ImagePicker imagePicker = ImagePicker();
  File? image;

  Future pickImageFromCamera() async {
    var selectedImage = await imagePicker.pickImage(
      source: ImageSource.camera,
    );
    if (selectedImage != null) {
      image = File(selectedImage.path);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pickImageFromCamera();
      },
      child: image != null
          ? CircleAvatar(
              maxRadius: 46,
              backgroundImage: FileImage(image!),
            )
          : Container(
              width: 94.w,
              height: 91.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.green014,
                  width: 1.5,
                ),
              ),
              child: Icon(
                CupertinoIcons.camera,
                color: AppColors.green014,
                size: 45.r,
              ),
            ),
    );
  }
}
