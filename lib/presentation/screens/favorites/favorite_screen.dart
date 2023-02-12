import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/favorites/components/favorite_body.dart';

import '../../utils/components/enums.dart';
import '../../utils/components/custom_navigation_bar.dart';

class FavoriteScreen extends StatelessWidget {
  static String routeName = '/favorite_screen';
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FavoriteScreenBody(),
      bottomNavigationBar:
          CustomNavigationBar(selectedMenu: MenuState.favourite),
    );
  }
}
