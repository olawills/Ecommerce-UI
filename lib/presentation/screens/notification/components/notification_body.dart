import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/header.dart';
import 'package:nike_store/presentation/screens/notification/components/notification_content.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.02),
        const Header(text: "Notifications", image: "assets/icons/delete.svg"),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Recent',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontFamily: 'Raleway',
                  fontSize: 24,
                  color: appColors.blackTextColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationContent(
                containerBg: appColors.textColor,
                imageBg: appColors.backgroundColor.withOpacity(0.1),
                time: '7 min ago',
                image: Image.asset(
                  fit: BoxFit.contain,
                  height: getProportionateScreenHeight(80),
                  'assets/images/outdoor.png',
                ),
              ),
              NotificationContent(
                containerBg: appColors.appBgColor,
                imageBg: appColors.textColor,
                time: '40 min ago',
                image: Image.asset(
                  fit: BoxFit.contain,
                  height: getProportionateScreenHeight(80),
                  'assets/images/jordan.png',
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              Text(
                'Yesterday',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontFamily: 'Raleway',
                      fontSize: 24,
                      color: appColors.blackTextColor,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              NotificationContent(
                containerBg: appColors.appBgColor,
                imageBg: appColors.textColor,
                time: '40 min ago',
                image: Image.asset(
                  fit: BoxFit.contain,
                  height: getProportionateScreenHeight(80),
                  'assets/images/sneakers.png',
                ),
              ),
              NotificationContent(
                containerBg: appColors.appBgColor,
                imageBg: appColors.textColor,
                time: '40 min ago',
                image: Image.asset(
                  fit: BoxFit.contain,
                  height: getProportionateScreenHeight(80),
                  'assets/images/spring.png',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
