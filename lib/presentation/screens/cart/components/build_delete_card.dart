import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class BuildDeleteCard extends StatelessWidget {
  const BuildDeleteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: getProportionateScreenWidth(270),
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
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Nike Club Max 200',
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                            fontFamily: 'Raleway',
                            fontSize: 17,
                            color: appColors.blackTextColor,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '\$94.05',
                      style: Theme.of(context).textTheme.headline2?.copyWith(
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
      buildDeleteButtoncard(context),
    ],
  );

  }
}

Widget buildDeleteButtoncard(BuildContext context) {
  // AppColors appColors = AppColors();
  return SizedBox(
    height: getProportionateScreenHeight(130),
    width: getProportionateScreenWidth(78),
    child: Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8),
      ),
      child: SvgPicture.asset(
        "assets/icons/delete.svg",
        height: 30,
      ),
    ),
  );
}
