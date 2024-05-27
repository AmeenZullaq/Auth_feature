import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/reusable_widgets/padding.dart';
import 'package:healthy_food_app/core/utilis/constants/app_shadows.dart';
import 'package:healthy_food_app/features/auth/views/widgets/singup_view_body.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: AppShadows.singUpShadow,
          ),
          child: const SingleChildScrollView(
            child: SymetricPadding(
              horizontal: 30,
              child: SingUpViewBody(),
            ),
          ),
        ),
      ),
    );
  }
}
