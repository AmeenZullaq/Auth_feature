import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Container(
            width: 18.w,
            height: 20.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.camarone.withOpacity(.6),
                width: 1.5,
              ),
            ),
            child: isChecked
                ? Icon(
                    Icons.check,
                    size: 15.r,
                    color: AppColors.camarone.withOpacity(.6),
                  )
                : null,
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(
          'Remember me',
          style: AppStyles.regular13Mantaga,
        ),
      ],
    );
  }
}
