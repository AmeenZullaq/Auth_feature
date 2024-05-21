import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/reusable_widgets/padding.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';
import 'package:healthy_food_app/features/auth/views/widgets/singup_view_body.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Image(
                image: AssetImage(
                  Assets.imagesSingupShadowPng,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image(
                image: AssetImage(
                  Assets.imagesSingupShadow2,
                ),
              ),
            ),
            SingleChildScrollView(
              child: SymetricPadding(
                horizontal: 30,
                child: SingUpViewBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
