import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/checkout/components/checkout_body.dart';

class CheckoutScreen extends StatelessWidget {
  static String routeName = '/checkout';
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CheckoutBody(),
    );
  }
}
