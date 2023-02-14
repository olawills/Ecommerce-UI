import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_store/presentation/screens/otp/otp_screen.dart';
import 'package:nike_store/presentation/utils/components/custom_back_button.dart';
import 'package:nike_store/presentation/utils/components/default_button.dart';
import 'package:nike_store/presentation/utils/components/header_widget.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class ForgotPasswordBody extends StatefulWidget {
  const ForgotPasswordBody({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordBody> createState() => _ForgotPasswordBodyState();
}

class _ForgotPasswordBodyState extends State<ForgotPasswordBody> {
  AppColors appColors = AppColors();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomBackButton(),
        const HeaderWidget(
          headerText: 'Forgot Password',
          bodyText: 'Enter Your Email Account To Reset Your Password',
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            onFieldSubmitted: (submit) {
              buildDialolModal(context);
            },
            decoration: InputDecoration(
              hintText: '***********',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: appColors.milkishColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: appColors.backgroundColor,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        Center(
          child: DefaultButton(
            onPressed: () {
              Navigator.pushNamed(context, OtpScreen.routeName);
            },
            text: 'Reset Pasword',
            textColor: appColors.textColor,
            backgroundColor: appColors.backgroundColor,
          ),
        ),
      ],
    );
  }

  Future buildDialolModal(BuildContext context) async {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
      ),
      child: await showDialog(
          context: context,
          builder: (context) {
            return SimpleDialog(
              contentPadding: const EdgeInsets.all(20),
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: appColors.backgroundColor,
                  child: SvgPicture.asset(
                    'assets/icons/frame.svg',
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(10)),
                Text(
                  'Check Your Email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(10)),
                Text(
                  'We Have Send Password Recovery Code in Your Email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            );
          }),
    );
  }
}
