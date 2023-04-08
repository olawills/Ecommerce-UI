import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/custom_navigation_bar.dart';
import 'package:nike_store/presentation/screens/home_screen/components/home_body.dart';
import 'package:nike_store/presentation/utils/components/enums.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomNavigationBar(selectedMenu: MenuState.home),
    );
  }
}
