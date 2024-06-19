import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';

class DefaultUserImage extends StatelessWidget {
  const DefaultUserImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94.w,
      height: 91.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.camarone,
          width: 1.5,
        ),
      ),
      child: Icon(
        CupertinoIcons.camera,
        color: AppColors.camarone,
        size: 45.r,
      ),
    );
  }
}
