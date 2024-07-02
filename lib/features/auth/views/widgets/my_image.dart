import 'dart:io';
import 'package:flutter/material.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/services/get_storage.dart';
import 'package:healthy_food_app/features/auth/views/widgets/default_user_image.dart';

class MyImage extends StatefulWidget {
  const MyImage({
    super.key,
    required this.valueNotifier,
  });

  final ValueNotifier valueNotifier;

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  void initState() {
    super.initState();
    widget.valueNotifier.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return getStorage.read(kUserImage) != null
        ? CircleAvatar(
            maxRadius: 46,
            backgroundImage: FileImage(
              File(
                getStorage.read(kUserImage),
              ),
            ),
          )
        : const DefaultUserImage();
  }
}
