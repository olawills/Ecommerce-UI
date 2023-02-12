import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/notification/components/notification_body.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = "/notification_screen";
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Scaffold(
      body: Container(
        color: appColors.appBgColor,
        child: const NotificationBody(),
      ),
    );
  }
}
