import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';
import 'package:healthy_food_app/features/splash/views/widgets/splash_align_transition.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SplashAlignTransition(
            child: Image.asset(
              Assets.imagesSplash,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.bottomRight,
          child: Image(
            image: AssetImage(
              Assets.imagesSplashShadowPng,
            ),
          ),
        ),
      ],
    );
  }
}
