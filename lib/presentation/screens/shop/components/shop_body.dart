import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/shop/components/shop_content.dart';
import 'package:nike_store/presentation/screens/home_screen/components/home_header.dart';
import 'package:nike_store/presentation/utils/components/reuseable_button.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';

class ShopBody extends StatelessWidget {
  const ShopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.06),
        HomeHeader(
          child1: ReusableButton(
            onPressed: () {
              Navigator.of(context).pop(context);
            },
          ),
          child2: Text(
            'Sneaker Shop',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        const ShopContent(),
      ],
    );
  }
}
