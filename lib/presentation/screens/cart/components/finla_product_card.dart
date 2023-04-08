import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class FinalProductCard extends StatelessWidget {
  const FinalProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: getProportionateScreenWidth(340),
        height: getProportionateScreenHeight(130),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: appColors.textColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: appColors.textColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(
                  fit: BoxFit.contain,
                  height: getProportionateScreenHeight(80),
                  width: getProportionateScreenWidth(80),
                  'assets/images/outdoor.png',
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Nike Air Max 270 Essential',
                      style: Theme.of(context).textTheme.displayMedium!.copyWith(
                            fontFamily: 'Raleway',
                            fontSize: 18,
                            color: appColors.blackTextColor,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '\$74.95',
                      style: Theme.of(context).textTheme.displayMedium!.copyWith(
                            fontFamily: 'Raleway',
                            fontSize: 16,
                            color: appColors.blackTextColor,
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );

  }
}
