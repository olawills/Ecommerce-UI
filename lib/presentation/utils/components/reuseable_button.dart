import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class ReusableButton extends StatelessWidget {
  final Function()? onPressed;
  const ReusableButton({
    Key? key, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
        backgroundColor: appColors.textColor,
        radius: 20,
        child: Align(
          alignment: Alignment.center,
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
