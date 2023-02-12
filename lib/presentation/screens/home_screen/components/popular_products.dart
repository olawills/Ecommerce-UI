import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

import 'popular_shoes.dart';

class PopularProductsPage extends StatelessWidget {
  const PopularProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Shoes',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(20),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    color: appColors.backgroundColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              const PopularShoes(
                image: 'assets/images/outdoor.png',
              ),
              SizedBox(width: getProportionateScreenHeight(3)),
              const PopularShoes(
                image: 'assets/images/sneakers.png',
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Text(
            'New Arrivals',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildCardBanner(),
          SizedBox(height: getProportionateScreenHeight(30)),
        ],
      ),
    );
  }

  buildCardBanner() {
    AppColors appColors = AppColors();
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 120,
        width: double.infinity,
        color: appColors.textColor,
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Text(
                    'Summer Sale',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(2)),
                  Text(
                    '15% OFF',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(32),
                      fontWeight: FontWeight.bold,
                      color: appColors.bannerColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: getProportionateScreenWidth(20)),
            Image.asset(
              'assets/images/up.png',
              height: 80,
              width: 120,
            ),
          ],
        ),
      ),
    );
  }
}
