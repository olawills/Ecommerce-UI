import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class FavoritesContainer extends StatelessWidget {
  // final Favorites favorites;
  final String image;
  final String desc;
  final String price;
  final Color color;
  final Color secondColor;
  const FavoritesContainer({
    Key? key,
    required this.color,
    required this.secondColor,
    required this.image,
    required this.desc,
    required this.price,
    // required this.favorites,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return SizedBox(
      height: 250,
      width: 180,
      child: Container(
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: appColors.textColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
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
              SizedBox(height: getProportionateScreenHeight(35)),
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
                desc,
                style: TextStyle(
                  color: appColors.blackTextColor,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      color: appColors.blackTextColor,
                      fontSize: 15,
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: secondColor,
                      borderRadius: BorderRadius.circular(20),
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



//  color: Colors.red,
//                 secondColor: Colors.blue,


//                 color: Colors.red,
//                 secondColor: Colors.blue,

//                  color: Colors.cyan.shade300,
//                 secondColor: Colors.blue.shade500,