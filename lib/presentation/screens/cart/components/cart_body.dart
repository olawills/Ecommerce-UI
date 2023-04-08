import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/cart/components/cart_product_section.dart';
import 'package:nike_store/presentation/screens/home_screen/components/home_header.dart';
import 'package:nike_store/presentation/utils/components/reuseable_button.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.05),
        HomeHeader(
          child1: ReusableButton(onPressed: () => Navigator.pop(context)),
          child2: Text(
            'My Cart',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontFamily: 'Raleway',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
          ),
          child3: SizedBox(width: getProportionateScreenWidth(50)),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        const CartProductSection()
      ],
    );
  }
}
