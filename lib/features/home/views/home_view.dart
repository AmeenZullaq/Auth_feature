import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/core/utilis/functions/showing_dialog.dart';
import 'package:healthy_food_app/features/auth/views/widgets/log_out_dialog.dart';

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
                showingDialog(
                  context,
                  widget: const LogoutDialog(),
                );
              },
              child: Text(
                'logout',
                style: AppStyles.medium20Cabin,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
