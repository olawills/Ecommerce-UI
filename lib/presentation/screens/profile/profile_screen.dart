import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/profile/components/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile_screen";
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: ProfileBody(),
      ),
    );
  }
}
