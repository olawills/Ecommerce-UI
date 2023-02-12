import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:nike_store/presentation/screens/home_screen/components/side_menu.dart';
import 'package:nike_store/presentation/utils/components/custom_navigation_bar.dart';
import 'package:nike_store/presentation/screens/home_screen/components/home_body.dart';
import 'package:nike_store/presentation/utils/components/enums.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        controller: ZoomDrawerController(),
        style: DrawerStyle.defaultStyle,
        mainScreen: const SingleChildScrollView(child: HomeBody()),
        menuScreen: const SideMenu(),
      ),
      bottomNavigationBar:
          const CustomNavigationBar(selectedMenu: MenuState.home),
    );
  }
}
