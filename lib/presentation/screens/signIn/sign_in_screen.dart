import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/signIn/components/sign_in_body.dart';

class SignInScreen extends StatefulWidget {
  static String routeName = "/sign_in";
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyWidget(),
    );
  }
}
