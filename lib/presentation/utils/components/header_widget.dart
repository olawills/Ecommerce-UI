import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';

class HeaderWidget extends StatelessWidget {
  final String headerText;
  final String bodyText;
  const HeaderWidget({
    Key? key,
    required this.headerText,
    required this.bodyText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getProportionateScreenWidth(10)),
      child: Container(
        margin: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              headerText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(34),
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Text(
              bodyText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(22),
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
