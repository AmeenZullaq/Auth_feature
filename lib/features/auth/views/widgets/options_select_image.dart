import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/services/get_storage.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/core/utilis/functions/pick_image.dart';
import 'package:image_picker/image_picker.dart';

class OptionsSelectImage extends StatelessWidget {
  const OptionsSelectImage({
    super.key,
    required this.valueNotifier,
  });

  final ValueNotifier valueNotifier;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150.h,
      decoration: const BoxDecoration(
        color: Color(0xFFFFFDFD),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        border: Border(
          top: BorderSide(
            color: AppColors.forstGreen,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () async {
                  await pickImage(source: ImageSource.gallery);
                  valueNotifier.value = getxStorage.read(kUserImage);
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.image,
                  size: 50.r,
                ),
              ),
              Text(
                'Gallery',
                style: AppStyles.bold16,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () async {
                  await pickImage(source: ImageSource.camera);
                  valueNotifier.value = getxStorage.read(kUserImage);
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.camera_alt,
                  size: 50.r,
                ),
              ),
              Text(
                'Camera',
                style: AppStyles.bold16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
