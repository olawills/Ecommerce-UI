import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/header.dart';
import 'package:nike_store/presentation/screens/favorites/components/favorites_widgets.dart';

class FavoriteScreenBody extends StatelessWidget {
  const FavoriteScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          Header(
            image: 'assets/icons/Heart Icon.svg',
            text: 'Favorite',
          ),
          FavoritesWidgets(),
        ],
      ),
    );
  }
}
