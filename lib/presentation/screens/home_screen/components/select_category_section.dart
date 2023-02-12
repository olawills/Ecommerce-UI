import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import '../../../utils/theme_manager/styles.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  List<String> textIndex = [
    'All Shoes',
    'Outdoor',
    'Tennis',
    'Sneakers',
  ];

  bool currentIndex = false;

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Category',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: getProportionateScreenHeight(45),
                    width: getProportionateScreenWidth(100),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: appColors.textColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'All Shoes',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appColors.blackTextColor,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: getProportionateScreenHeight(45),
                    width: getProportionateScreenWidth(100),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: appColors.backgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Outdoor',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appColors.textColor,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: getProportionateScreenHeight(45),
                    width: getProportionateScreenWidth(100),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: appColors.textColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Tennis',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appColors.blackTextColor,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: getProportionateScreenHeight(45),
                    width: getProportionateScreenWidth(100),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: appColors.textColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Sneakers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appColors.blackTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
