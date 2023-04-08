import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/shop/components/expandable_text.dart';
import 'package:nike_store/presentation/screens/shop/components/shoes_list.dart';
import 'package:nike_store/presentation/utils/components/constants.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class ShopContent extends StatelessWidget {
  const ShopContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nike Air Max 270 ',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontFamily: 'Raleway',
                  fontSize: getProportionateScreenWidth(34),
                  color: appColors.blackTextColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
          Text(
            'Essential',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontFamily: 'Raleway',
                  fontSize: getProportionateScreenWidth(34),
                  color: appColors.blackTextColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Text(
            "Men's Shoes",
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontFamily: 'Raleway',
                  fontSize: getProportionateScreenWidth(28),
                  color: appColors.blackTextColor,
                  fontWeight: FontWeight.w300,
                ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Text(
            "\$179.39",
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontFamily: 'Raleway',
                  fontSize: getProportionateScreenWidth(28),
                  color: appColors.blackTextColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Center(
            child: Image.asset(
              'assets/images/outdoor.png',
              height: SizeConfig.screenHeight * 0.24,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          const ShoeBadge(),
          SizedBox(height: SizeConfig.screenHeight * 0.05),
          const ExpandableText(text: productDesc),
        ],
      ),
    );
  }
}
