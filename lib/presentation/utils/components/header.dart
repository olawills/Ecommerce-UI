import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_store/presentation/utils/components/reuseable_button.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class Header extends StatelessWidget {
  final String text;
  final String? image;
  final Widget? child;
  const Header({
    Key? key,
    required this.text,
    this.image,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReusableButton(onPressed: () => Navigator.pop(context)),
          Text(
            text,
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  fontFamily: 'Raleway',
                  fontSize: getProportionateScreenWidth(24),
                  fontWeight: FontWeight.bold,
                ),
          ),
          child ??
              CircleAvatar(
                backgroundColor: appColors.textColor,
                radius: 25,
                child: SvgPicture.asset(
                  image!,
                  color: appColors.blackTextColor,
                  height: 25,
                ),
              ),
        ],
      ),
    );
  }
}
