import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/edit_profile/components/edit_profile_body.dart';

class EditProfileScreen extends StatelessWidget {
  static String routeName = "/edit_profile_screen";
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: EditProfileBody(),
      ),
    );
  }
}
