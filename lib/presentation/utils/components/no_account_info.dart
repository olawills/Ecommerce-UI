import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';

class NoAccountInfo extends StatelessWidget {
  final String firstText;
  final String secondText;
  final VoidCallback onPressed;
  const NoAccountInfo({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(5)),
        GestureDetector(
          onTap:  onPressed,
          child: Text(
            secondText,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
