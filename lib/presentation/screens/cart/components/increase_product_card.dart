import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class IncreaseProductCard extends StatelessWidget {
  const IncreaseProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: getProportionateScreenHeight(130),
          width: getProportionateScreenWidth(80),
          child: Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: appColors.backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: appColors.textColor,
                    size: 30,
                  ),
                ),
                Text(
                  '1',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: appColors.textColor,
                      ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove,
                    color: appColors.textColor,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(250),
          height: getProportionateScreenHeight(130),
          child: Container(
            padding: const EdgeInsets.all(25),
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
                    'assets/images/sneakers.png',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nike Club Max',
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  fontFamily: 'Raleway',
                                  fontSize: 18,
                                  color: appColors.blackTextColor,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '\$584.95',
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
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
