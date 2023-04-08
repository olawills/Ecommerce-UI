import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: appColors.bannerColor,
        child: Column(
          children: [
            // user Avatar
            const BuildAvatar(),
            SizedBox(height: SizeConfig.screenHeight * 0.09),
            // Menu Items
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MenuTile(
                      image: 'assets/icons/User Icon.svg', title: 'Profile'),
                  const MenuTile(
                      image: 'assets/icons/Shop Icon.svg', title: 'My Cart'),
                  const MenuTile(
                      image: 'assets/icons/Heart Icon.svg', title: 'Favorite'),
                  MenuTile(
                    title: 'Orders',
                    child: Image.asset('assets/icons/orders.png'),
                  ),
                  const MenuTile(
                    title: 'Settings',
                    child: Icon(CupertinoIcons.settings),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildAvatar extends StatelessWidget {
  const BuildAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          child: Image.asset(
            "assets/images/persons.png",
            height: 80,
          ),
        ),
        Text(
          'Emmanuel Oyiboke',
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontFamily: 'Raleway',
                fontSize: getProportionateScreenWidth(28),
                fontWeight: FontWeight.bold,
                color: appColors.textColor,
              ),
        ),
      ],
    );
  }
}

class MenuTile extends StatelessWidget {
  final String title;
  final String? image;
  final Widget? child;
  const MenuTile({Key? key, required this.title, this.image, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
      ),
      leading: child ??
          SvgPicture.asset(
            image!,
          ),
    );
  }
}
