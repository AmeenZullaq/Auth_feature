import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utilis/functions/showing_bottom_sheet.dart';
import 'package:healthy_food_app/features/auth/views/widgets/my_iimage.dart';
import 'package:healthy_food_app/features/auth/views/widgets/options_select_image.dart';

class UserImage extends StatefulWidget {
  const UserImage({super.key});

  @override
  State<UserImage> createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
  ValueNotifier valueNotifier = ValueNotifier(null);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showingBottomSheet(
          context,
          widget: OptionsSelectImage(
            valueNotifier: valueNotifier,
          ),
        );
      },
      child: MyImage(
        valueNotifier: valueNotifier,
      ),
    );
  }
}
