import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/services/get_storage.dart';
import 'package:healthy_food_app/core/utilis/constants/app_routing.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcom To Home View',
              style: AppStyles.medium20Cabin,
            ),
            ElevatedButton(
              onPressed: () {
                getxStorage.remove(kToken);
                Get.offNamed(Pages.logInView);
              },
              child: Text(
                'logout',
                style: AppStyles.medium20Cabin,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
