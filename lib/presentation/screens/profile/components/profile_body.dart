import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_store/presentation/utils/components/header.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(
          text: 'Profile',
          child: SizedBox(height: getProportionateScreenHeight(50)),
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        CircleAvatar(
          radius: 80,
          child: SvgPicture.asset(
            "assets/icons/User.svg",
          ),
        ),
      ],
    );
  }
}
