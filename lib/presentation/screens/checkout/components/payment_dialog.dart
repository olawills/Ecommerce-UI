import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/home_screen/home_screen.dart';
import 'package:nike_store/presentation/utils/components/default_button.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

Future buildPaymentDialog(BuildContext context) async {
  AppColors appColors = AppColors();
  return SizedBox(
    height: getProportionateScreenHeight(250),
    width: getProportionateScreenWidth(150),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
      ),
      child: await showDialog(
          context: context,
          builder: (context) {
            return SimpleDialog(
              contentPadding: const EdgeInsets.all(20),
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundColor: appColors.bannerColor,
                  child: Image.asset(
                    'assets/icons/celebrate.png',
                    height: getProportionateScreenHeight(120),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(10)),
                Text(
                  'Your Payment is Successful',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: getProportionateScreenWidth(26),
                        fontWeight: FontWeight.w400,
                        color: appColors.blackTextColor,
                      ),
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                DefaultButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  ),
                  text: 'Back To Shopping',
                  textColor: appColors.textColor,
                  backgroundColor: appColors.backgroundColor,
                ),
                SizedBox(height: getProportionateScreenHeight(10)),
              ],
            );
          }),
    ),
  );
}
