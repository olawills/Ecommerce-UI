import 'package:flutter/material.dart';
import 'favorites_container.dart';

class FavoritesWidgets extends StatefulWidget {
  const FavoritesWidgets({Key? key}) : super(key: key);

  @override
  State<FavoritesWidgets> createState() => _FavoritesWidgetsState();
}

class _FavoritesWidgetsState extends State<FavoritesWidgets> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                childAspectRatio: 0.6,
              ),
              itemBuilder: (ctx, index) {
                return FavoritesContainer(
                  color: Colors.blue.shade500,
                  secondColor: Colors.cyan.shade100,
                  desc: 'Nike Jordan',
                  image: 'assets/images/sneakers.png',
                  price: '\$56.7',
                );
              },
            ),
          ],
        ),
      ),
    );

    // Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     Row(
    //       children: [
    //         FavoritesContainer(
    //           color: Colors.blue.shade500,
    //           secondColor: Colors.cyan.shade100,
    //           desc: 'Nike Jordan',
    //           image: 'assets/images/sneakers.png',
    //           price: '\$56.7',
    //         ),
    //         const FavoritesContainer(
    //           color: Colors.red,
    //           secondColor: Colors.blue,
    //           desc: 'Nike Jordan',
    //           image: 'assets/images/outdoor.png',
    //           price: '\$56.7',
    //         ),
    //       ],
    //     ),
    //     Row(
    //       children: [
    //         const FavoritesContainer(
    //           color: Colors.red,
    //           secondColor: Colors.blue,
    //           desc: 'Nike Jordan',
    //           image: 'assets/images/jordan.png',
    //           price: '\$56.7',
    //         ),
    //         FavoritesContainer(
    //           color: Colors.cyan.shade300,
    //           secondColor: Colors.blue.shade500,
    //           desc: 'Nike Jordan',
    //           image: 'assets/images/spring.png',
    //           price: '\$56.7',
    //         ),
    //       ],
    //     ),
    //   ],
    // );
  }
}

// GridView.count(
//       shrinkWrap: true,
//       crossAxisCount: 2,
//       children: List.generate(
//         favorites.length,
//         (index) {
//           return FavoritesContainer(
//             color: Colors.blue.shade500,
//             secondColor: Colors.cyan.shade100,
//             favorites: favorites[index],
//           );
//         },
//       ),
//     )