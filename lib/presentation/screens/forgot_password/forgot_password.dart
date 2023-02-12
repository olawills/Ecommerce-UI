import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/forgot_password/components/forgot_password_body.dart';

class ForgotPassword extends StatefulWidget {
  static String routeName = "/forgot_password";
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgotPasswordBody(),
    );
  }
}
