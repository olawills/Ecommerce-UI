import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/otp/components/otp_form.dart';
import 'package:nike_store/presentation/utils/components/custom_back_button.dart';
import 'package:nike_store/presentation/utils/components/header_widget.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class OtpBody extends StatefulWidget {
  const OtpBody({Key? key}) : super(key: key);

  @override
  State<OtpBody> createState() => _OtpBodyState();
}

class _OtpBodyState extends State<OtpBody> {
  AppColors appColors = AppColors();
  final email = "wobdele@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomBackButton(),
        const HeaderWidget(
          headerText: 'OTP Verification',
          bodyText: 'Please Check Your Email To See The Verification Code',
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'OTP Code',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(30),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              const OtpForm(),
              SizedBox(height: getProportionateScreenHeight(20)),
              buildTimer(),
            ],
          ),
        ),
      ],
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            // OTP code resend
          },
          child: Text('Resend code to $email'),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) {
            return Text(
              "00:${value.toInt()}",
              style: TextStyle(
                color: appColors.blackTextColor,
              ),
            );
          },
        ),
      ],
    );
  }

}
