import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcom To Home View',
          style: AppStyles.medium20Cabin,
        ),
      ),
    );
  }
}
