import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/widgets/ontap_handler.dart';
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
      padding: const EdgeInsets.only(left: 10),
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
          Container(
            height: 70,
            width: double.maxFinite,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: textIndex.length,
              itemBuilder: (ctx, index) {
                return OnTapHandler(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    // height: getProportionateScreenHeight(45),
                    width: getProportionateScreenWidth(150),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: appColors.backgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      textIndex[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appColors.textColor,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
