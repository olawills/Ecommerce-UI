import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/home_screen/home_screen.dart';
import 'package:nike_store/presentation/screens/signIn/sign_in_screen.dart';
import 'package:nike_store/presentation/screens/singUp/components/sing_up_form.dart';
import 'package:nike_store/presentation/utils/components/custom_back_button.dart';
import 'package:nike_store/presentation/utils/components/default_button.dart';
import 'package:nike_store/presentation/utils/components/header_widget.dart';
import 'package:nike_store/presentation/utils/components/no_account_info.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class SignUpBodyWidgets extends StatefulWidget {
  const SignUpBodyWidgets({Key? key}) : super(key: key);

  @override
  State<SignUpBodyWidgets> createState() => _SignUpBodyWidgetsState();
}

class _SignUpBodyWidgetsState extends State<SignUpBodyWidgets> {
  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomBackButton(),
          const HeaderWidget(
            headerText: 'Register Account',
            bodyText: 'Fill Your Details or Continue with Social Media',
          ),
          const SignUpForm(),
          SizedBox(height: getProportionateScreenHeight(10)),
          Center(
            child: Column(
              children: [
                DefaultButton(
                  textColor: appColors.textColor,
                  backgroundColor: appColors.backgroundColor,
                  onPressed: () =>
                      Navigator.pushNamed(context, HomeScreen.routeName),
                  text: 'Sign Up',
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                DefaultButton(
                  textColor: appColors.blackTextColor,
                  backgroundColor: appColors.textColor,
                  onPressed: () {},
                  text: 'Sign Up With Google',
                  child: Image.asset('assets/icons/google.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          NoAccountInfo(
            firstText: 'Already Have Account?',
            secondText: 'Log in',
            onPressed: () =>
                Navigator.pushNamed(context, SignInScreen.routeName),
          ),
        ],
      ),
    );
  }
}
