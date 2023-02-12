import 'package:flutter/material.dart';

import '../../../utils/components/size_config.dart';
import '../../../utils/theme_manager/styles.dart';

class OnBoardContent extends StatefulWidget {
  final String? title;
  final String image;
  final String? desc;
  final String? bodyText;
  const OnBoardContent({
    Key? key,
    required this.image,
    this.title,
    this.bodyText,
    this.desc,
  }) : super(key: key);

  @override
  State<OnBoardContent> createState() => _OnBoardContentState();
}

class _OnBoardContentState extends State<OnBoardContent> {
  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Container(
      color: appColors.backgroundColor,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 80,
            left: 50,
            child: Text(
              widget.title!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appColors.textColor,
                fontSize: getProportionateScreenWidth(36),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 0,
            right: 0,
            child: Image.asset(
              widget.image,
              height: getProportionateScreenHeight(250),
              width: getProportionateScreenWidth(230),
            ),
          ),
          Positioned(
            bottom: 220,
            left: 0,
            right: 0,
            child: Text(
              widget.bodyText!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appColors.textColor,
                fontSize: getProportionateScreenWidth(36),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 160,
            left: 0,
            right: 0,
            child: Text(
              widget.desc!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appColors.textColor,
                fontSize: getProportionateScreenWidth(22),
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
