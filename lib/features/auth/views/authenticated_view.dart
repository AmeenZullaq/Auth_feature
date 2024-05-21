import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/reusable_widgets/padding.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';
import 'package:healthy_food_app/features/auth/views/widgets/authenticated_view_body.dart';

class AuthenticatedView extends StatelessWidget {
  const AuthenticatedView({super.key});

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
                  Assets.imagesAuthShadow,
                ),
              ),
            ),
            SingleChildScrollView(
              child: SymetricPadding(
                horizontal: 30,
                child: AuthenticatedViewBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
