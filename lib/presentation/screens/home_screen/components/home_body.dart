import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/home_screen/components/search_field.dart';
import 'package:nike_store/presentation/screens/home_screen/components/select_category_section.dart';
import 'package:nike_store/presentation/screens/search_screen/search_screen.dart';
import 'package:nike_store/presentation/utils/components/next_page.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'home_header.dart';
import 'popular_products.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.03),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(20)),
            const SearchField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const SelectCategory(),
            SizedBox(height: getProportionateScreenHeight(20)),
            const PopularProductsPage(),
          ],
        ),
      ),
    );
  }
}
