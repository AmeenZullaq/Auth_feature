import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';
import 'package:healthy_food_app/features/auth/views/widgets/login_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: LoginViewBody(),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image(
                image: AssetImage(
                  Assets.imagesLoginShadowPnd,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
