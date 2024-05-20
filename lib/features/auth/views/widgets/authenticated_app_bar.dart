import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';

class AuthenticatedAppBar extends StatelessWidget {
  const AuthenticatedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            CupertinoIcons.arrow_left,
            color: Color(0xFFCECECE),
          ),
        ),
        const Spacer(),
        Image.asset(
          height: 118.h,
          width: 221.w,
          Assets.imagesAuthHealthy,
          fit: BoxFit.fill,
        ),
        const Spacer(),
      ],
    );
  }
}
