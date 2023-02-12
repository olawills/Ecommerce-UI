import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_store/presentation/screens/notification/notification_screen.dart';
import 'package:nike_store/presentation/screens/shop/shop_screen.dart';
import 'package:nike_store/presentation/screens/favorites/favorite_screen.dart';
import 'package:nike_store/presentation/screens/home_screen/home_screen.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

import 'enums.dart';

class CustomNavigationBar extends StatelessWidget {
  final MenuState selectedMenu;
  const CustomNavigationBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  color: MenuState.home == selectedMenu
                      ? appColors.backgroundColor
                      : appColors.inActiveIconColor,
                  height: 30,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Heart Icon.svg",
                  color: MenuState.favourite == selectedMenu
                      ? appColors.backgroundColor
                      : appColors.inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, FavoriteScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: MenuState.shop == selectedMenu
                      ? appColors.backgroundColor
                      : appColors.inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, ShopScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Bell.svg",
                  color: MenuState.notification == selectedMenu
                      ? appColors.backgroundColor
                      : appColors.inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, NotificationScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color: MenuState.user == selectedMenu
                      ? appColors.backgroundColor
                      : appColors.inActiveIconColor,
                ),
                onPressed: () {},
              ),
            ],
          )),
    );
  }
}
