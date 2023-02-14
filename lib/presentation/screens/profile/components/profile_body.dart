import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/forgot_password/forgot_password.dart';
import 'package:nike_store/presentation/screens/profile/components/profile_avatar.dart';
import 'package:nike_store/presentation/screens/singUp/components/sing_up_form.dart';
import 'package:nike_store/presentation/utils/components/default_button.dart';
import 'package:nike_store/presentation/utils/components/header.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.03),
          Header(
            text: 'Profile',
            child: SizedBox(width: getProportionateScreenHeight(50)),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          const ProfileAvatar(),
          const SignUpForm(
            child: SizedBox(),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, ForgotPassword.routeName),
              child: const Text('Recovery Password'),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            onPressed: () {},
            text: "Save Now",
            textColor: appColors.textColor,
            backgroundColor: appColors.bannerColor,
          )
        ],
      ),
    );
  }
}
