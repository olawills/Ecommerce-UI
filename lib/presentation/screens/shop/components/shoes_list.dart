import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';

class ShoeBadge extends StatefulWidget {
  const ShoeBadge({
    Key? key,
  }) : super(key: key);

  @override
  State<ShoeBadge> createState() => _ShoeBadgeState();
}

class _ShoeBadgeState extends State<ShoeBadge> {
  List shoesList = [];

  _displayShoes() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/shoes_list.json")
        .then((value) {
      setState(() {
        shoesList = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    _displayShoes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < shoesList.length; i++)
          SizedBox(
            height: getProportionateScreenHeight(70),
            width: getProportionateScreenWidth(70),
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: appColors.textColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                shoesList[i]['img'],
                height: getProportionateScreenHeight(20),
                width: getProportionateScreenWidth(20),
              ),
            ),
          ),
      ],
    );
  }
}
