import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthy_food_app/core/reusable_widgets/padding.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';
import 'package:healthy_food_app/features/auth/views/widgets/auth_text_form_field.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return AuthTextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {},
      hint: 'Email',
      suffixIcon: EndPadding(
        end: 16.w,
        child: GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            Assets.imagesEditIcon,
          ),
        ),
      ),
    );
  }
}
