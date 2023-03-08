import 'package:flutter/material.dart';

import '../../../utils/components/size_config.dart';
import '../../../utils/theme_manager/styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            width: SizeConfig.screenWidth * 0.68,
            height: getProportionateScreenHeight(58),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: appColors.kSecondaryColor.withOpacity(0.1),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: TextField(
              // onChanged: (value) => print(value),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: "Looking for shoes",
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                  color: appColors.blackTextColor.withOpacity(0.4),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: getProportionateScreenWidth(60),
          width: getProportionateScreenWidth(60),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: appColors.backgroundColor.withOpacity(0.9),
              borderRadius: BorderRadius.circular(30)),
          child: Icon(
            Icons.tune,
            color: appColors.textColor,
            size: 30,
          ),
        ),
      ],
    );
  }
}
