import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/search_screen/components/search_screen_compoment.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchComponent(),
    );
  }
}
