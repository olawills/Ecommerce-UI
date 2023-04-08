import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/cart/components/increase_product_card.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'build_delete_card.dart';
import 'finla_product_card.dart';

class CartProductSection extends StatelessWidget {
  const CartProductSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '3 Item',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontFamily: 'Raleway',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: getProportionateScreenHeight(5)),
          const IncreaseProductCard(),
          SizedBox(height: getProportionateScreenHeight(10)),
          const BuildDeleteCard(),
          SizedBox(height: getProportionateScreenHeight(10)),
          const FinalProductCard(),
        ],
      ),
    );
  }
}

// Last Cart Section
