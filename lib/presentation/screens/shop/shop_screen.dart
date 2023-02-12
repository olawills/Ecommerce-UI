import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_store/presentation/screens/cart/cart_screen.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'components/shop_body.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class ShopScreen extends StatelessWidget {
  static String routeName = '/shop_screen';
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Scaffold(
      body: const ShopBody(),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              child: CircleAvatar(
                backgroundColor: appColors.textColor,
                radius: 25,
                child: Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/icons/Heart Icon.svg',
                    color: appColors.blackTextColor,
                    height: 20,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, CartScreen.routeName),
              child: Container(
                // alignment: Alignment.center,
                height: getProportionateScreenHeight(60),
                width: getProportionateScreenWidth(200),
                decoration: BoxDecoration(
                  color: appColors.backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/Shop Icon.svg',
                      color: appColors.textColor,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      'Add To Cart',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: appColors.textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
