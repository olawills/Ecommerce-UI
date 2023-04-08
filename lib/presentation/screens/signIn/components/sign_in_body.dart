import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/home_screen/home_screen.dart';
import 'package:nike_store/presentation/screens/signIn/components/sign_in_form.dart';
import 'package:nike_store/presentation/screens/singUp/sign_up_screen.dart';
import 'package:nike_store/presentation/utils/components/default_button.dart';
import 'package:nike_store/presentation/utils/components/header_widget.dart';
import 'package:nike_store/presentation/utils/components/next_page.dart';
import 'package:nike_store/presentation/utils/components/no_account_info.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          const HeaderWidget(
            headerText: 'Hello Again!',
            bodyText: 'Fill Your Details or Continue with Social Media',
          ),
          const SignInFormWidget(),
          SizedBox(height: getProportionateScreenHeight(10)),
          Align(
            alignment: Alignment.center,
            child: DefaultButton(
              textColor: appColors.textColor,
              backgroundColor: appColors.backgroundColor,
              onPressed: () {
                // nextPageOnly(
                //   context: context,
                //   screen: const HomeScreen(),
                // );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              text: 'Sign In',
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Align(
            alignment: Alignment.center,
            child: DefaultButton(
              textColor: appColors.blackTextColor,
              backgroundColor: appColors.textColor,
              onPressed: () {},
              text: 'Sign In With Google',
              child: Image.asset('assets/icons/google.png'),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          NoAccountInfo(
            firstText: 'New User?',
            secondText: 'Create Account',
            onPressed: () {
              nextPageOnly(
                context: context,
                screen: const SignUpScreen(),
              );
            },
          ),
        ],
      ),
    );
  }
}
