import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';

class CheckIcon extends StatefulWidget {
  const CheckIcon({
    super.key,
    required this.valueNotifier,
  });
  final ValueNotifier<bool> valueNotifier;

  @override
  State<CheckIcon> createState() => _CheckIconState();
}

class _CheckIconState extends State<CheckIcon> {
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
    return Icon(
      Icons.check,
      size: 13.r,
      color: AppColors.camarone.withOpacity(.6),
    );
  }
}
