import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/onboard_page/onboard_page.dart';
import 'package:nike_store/presentation/utils/components/next_page.dart';

import '../../utils/theme_manager/styles.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        nextPageOnly(
          context: context,
          screen: const OnboardingPage(),
        );
      },
    );
    AppColors appColors = AppColors();

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: appColors.backgroundColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                'assets/logo/nike.png',
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'NIKE',
              style: TextStyle(
                fontSize: 36,
                color: appColors.textColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
