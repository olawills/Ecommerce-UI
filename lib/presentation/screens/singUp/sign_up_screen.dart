import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/singUp/components/sign_up_body.dart';

class SignUpScreen extends StatefulWidget {
  static String routeName = "/sign_up";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpBodyWidgets(),
    );
  }
}
