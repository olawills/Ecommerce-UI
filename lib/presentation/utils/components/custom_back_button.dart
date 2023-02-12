import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        left: 20,
      ),
      child: CircleAvatar(
        backgroundColor: appColors.textColor,
        radius: 20,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: appColors.blackTextColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}
