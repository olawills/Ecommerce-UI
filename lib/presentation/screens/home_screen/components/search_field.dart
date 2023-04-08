import 'package:flutter/material.dart';
import '../../../utils/theme_manager/styles.dart';

class SearchField extends StatelessWidget {
  final TextEditingController textEditingController;
  const SearchField({Key? key, required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Container(
      height: 80,
      width: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextField(
            controller: textEditingController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              hintText: 'Search',
              // fillColor: Theme.of(context).cardColor,
              prefixIcon: Icon(
                Icons.search,
                size: 30,
                color: appColors.blackTextColor.withOpacity(0.4),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: appColors.backgroundColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 1,
                  color: appColors.bannerColor,
                ),
              ),
            ),
          ),
          // Container(
          //   height: getProportionateScreenWidth(60),
          //   width: getProportionateScreenWidth(60),
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //       color: appColors.backgroundColor.withOpacity(0.9),
          //       borderRadius: BorderRadius.circular(30)),
          //   child: Icon(
          //     Icons.tune,
          //     color: appColors.textColor,
          //     size: 30,
          //   ),
          // ),
        ],
      ),
    );
  }
}
