class Favorites {
  const Favorites(
      {required this.image, required this.price, required this.desc});
  final String image;
  final String price;
  final String desc;
}

const List<Favorites> favorites = <Favorites>[
  Favorites(
      image: "assets/images/outdoor.png", price: "Nike Jordan", desc: "\$58.7"),
  Favorites(
      image: "assets/images/outdoor.png", price: "Nike Jordan", desc: "\$58.7"),
  Favorites(
      image: "assets/images/outdoor.png", price: "Nike Jordan", desc: "\$58.7"),
  Favorites(
      image: "assets/images/outdoor.png", price: "Nike Jordan", desc: "\$58.7"),
];
