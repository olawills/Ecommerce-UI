import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/cart/components/cart_body.dart';
import 'package:nike_store/presentation/utils/components/checkout_widget.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart_screen';
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartBody(),
      bottomNavigationBar: CheckoutWidget(),
    );
  }
}
