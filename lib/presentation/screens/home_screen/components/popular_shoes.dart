import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class PopularShoes extends StatelessWidget {
  final String image;
  const PopularShoes({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return SizedBox(
      height: getProportionateScreenHeight(280),
      width: getProportionateScreenWidth(165),
      child: Container(
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: appColors.textColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  backgroundColor: appColors.textColor,
                  radius: 25,
                  child: SvgPicture.asset(
                    'assets/icons/Heart Icon.svg',
                    height: 15,
                    color: appColors.shopCounterColor,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  image,
                  height: 80,
                  width: 180,
                  // fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(38)),
              Text(
                'BEST SELLER',
                style: TextStyle(
                  color: appColors.backgroundColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Text(
                'Nike Jordan',
                style: TextStyle(
                  color: appColors.blackTextColor,
                  fontSize: getProportionateScreenWidth(18),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Row(
                children: [
                  Text(
                    "\$302.00",
                    style: TextStyle(
                      color: appColors.blackTextColor,
                      fontSize: 15,
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: appColors.backgroundColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: appColors.textColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
