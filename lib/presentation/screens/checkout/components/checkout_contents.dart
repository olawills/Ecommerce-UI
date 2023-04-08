import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_store/presentation/screens/checkout/components/map_page.dart';
import 'package:nike_store/presentation/screens/checkout/components/payment_dialog.dart';
import 'package:nike_store/presentation/utils/components/build_dot.dart';
import 'package:nike_store/presentation/utils/components/default_button.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class CheckoutContents extends StatefulWidget {
  const CheckoutContents({Key? key}) : super(key: key);

  @override
  State<CheckoutContents> createState() => _CheckoutContentsState();
}

class _CheckoutContentsState extends State<CheckoutContents> {
  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Expanded(
      child: Container(
        // padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: appColors.textColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        child: Column(
          children: [
            buildContactInfo(context),
            buildAdressInfo(context),
            buildCheckout(context),
          ],
        ),
      ),
    );
  }
}

Widget buildContactInfo(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 15),
        child: Text(
          'Contact Information',
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontFamily: 'Raleway',
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
      ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(5),
        children: [
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                fit: BoxFit.contain,
                'assets/icons/mail.png',
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'emmanueloyiboke@gmail.com',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Email',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ],
            ),
            trailing: SvgPicture.asset(
              "assets/icons/write.svg",
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(5)),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: SvgPicture.asset(
                fit: BoxFit.contain,
                'assets/icons/phone.svg',
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '+234-811-732-5298',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Phone',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ],
            ),
            trailing: SvgPicture.asset(
              "assets/icons/write.svg",
            ),
          )
        ],
      ),
    ],
  );
}

Widget buildAdressInfo(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          'Address',
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontFamily: 'Raleway',
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
        ),
      ),
      ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(2),
        children: [
          ListTile(
            title: Text(
              '1062 Airport Road Nigeria',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            trailing: const Icon(
              Icons.arrow_drop_down,
            ),
          ),
        ],
      ),
      const MapPage(),
      buildPaymethod(context),
    ],
  );
}

Widget buildCheckout(BuildContext context) {
  AppColors appColors = AppColors();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(2),
        children: [
          ListTile(
            title: Text(
              'Subtotal',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontFamily: 'Raleway',
                    fontSize: 18,
                    color: appColors.blackTextColor,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            trailing: Text(
              '\$753.95',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontFamily: 'Raleway',
                    fontSize: 18,
                    color: appColors.blackTextColor,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ),
          ListTile(
            title: Text(
              'Delivery',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontFamily: 'Raleway',
                    fontSize: 18,
                    color: appColors.blackTextColor,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            trailing: Text(
              '\$60.20',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    color: appColors.blackTextColor,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          45,
          (index) => buildDot(index),
        ),
      ),
      ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(2),
        children: [
          ListTile(
            title: Text(
              'Total Cost',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontFamily: 'Raleway',
                    fontSize: 18,
                    color: appColors.blackTextColor,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            trailing: Text(
              '\$814.15',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontFamily: 'Raleway',
                    fontSize: 18,
                    color: appColors.bannerColor,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ),
        ],
      ),
      Center(
        child: DefaultButton(
          onPressed: () {
            buildPaymentDialog(context);
          },
          text: 'Checkout',
          textColor: appColors.textColor,
          backgroundColor: appColors.bannerColor,
        ),
      ),
    ],
  );
}

Widget buildPaymethod(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Method',
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontFamily: 'Raleway',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(height: 5),
        Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/icons/card.png",
                ),
                const SizedBox(width: 10),
                Text(
                  'Dbl Card',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '**** **** 0696 4629',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontFamily: 'Raleway',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
