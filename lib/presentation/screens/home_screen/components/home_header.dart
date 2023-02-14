import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:nike_store/presentation/screens/cart/cart_screen.dart';
import 'package:nike_store/presentation/screens/home_screen/components/side_menu.dart';

import '../../../utils/components/size_config.dart';
import 'shop_counter.dart';

class HomeHeader extends StatefulWidget {
  final Widget? child1;
  final Widget? child2;
  final Widget? child3;

  const HomeHeader({
    Key? key,
    this.child1,
    this.child2,
    this.child3,
  }) : super(key: key);

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  final _drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.child1 ??
              buildSideMenu(
                onPressed: () => _drawerController.toggle?.call(),
              ),
          widget.child2 ??
              Text(
                'Explore',
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      fontFamily: 'Raleway',
                      fontSize: getProportionateScreenWidth(32),
                      fontWeight: FontWeight.bold,
                    ),
              ),
          widget.child3 ??
              ShopCounter(
                press: () {
                  Navigator.pushNamed(context, CartScreen.routeName);
                },
                numOfitem: 1,
                svgSrc: 'assets/icons/Shop Icon.svg',
              ),
        ],
      ),
    );
  }

  buildSideMenu({required VoidCallback onPressed}) {
    return SafeArea(
      child: GestureDetector(
        onTap: onPressed,
        child: SvgPicture.asset(
          'assets/icons/menu.svg',
          height: 30,
        ),
      ),
    );
  }
}
