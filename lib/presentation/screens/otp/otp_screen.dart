import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/otp/components/otp_body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp_screen";
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OtpBody(),
    );
  }
}
