import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/checkout/components/checkout_contents.dart';
import 'package:nike_store/presentation/screens/home_screen/components/home_header.dart';
import 'package:nike_store/presentation/utils/components/reuseable_button.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.05),
        HomeHeader(
          child1: ReusableButton(
            onPressed: () {
              Navigator.of(context).pop(context);
            },
          ),
          child2: Text(
            'My Cart',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontFamily: 'Raleway',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
          ),
          child3: Expanded(
            child: Container(),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.014),
        const CheckoutContents(),
      ],
    );
  }
}
