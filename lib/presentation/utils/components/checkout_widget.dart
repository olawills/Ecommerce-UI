import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/checkout/checkout_screen.dart';
import 'package:nike_store/presentation/utils/components/build_dot.dart';
import 'package:nike_store/presentation/utils/components/default_button.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return SizedBox(
      height: getProportionateScreenHeight(230),
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: appColors.textColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: 18,
                        color: appColors.blackTextColor,
                        fontWeight: FontWeight.w300,
                      ),
                ),
                Text(
                  '\$753.95',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: 18,
                        color: appColors.blackTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: 18,
                        color: appColors.blackTextColor,
                        fontWeight: FontWeight.w300,
                      ),
                ),
                Text(
                  '\$60.20',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: 16,
                        color: appColors.blackTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
            Row(
              children: List.generate(
                45,
                (index) => buildDot(index),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Cost',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: 18,
                        color: appColors.blackTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Text(
                  '\$814.15',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: 18,
                        color: appColors.bannerColor,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
            DefaultButton(
              onPressed: () =>
                  Navigator.pushNamed(context, CheckoutScreen.routeName),
              text: 'Checkout',
              textColor: appColors.textColor,
              backgroundColor: appColors.bannerColor,
            ),
          ],
        ),
      ),
    );
  }
}
