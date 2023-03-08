import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Name TextForm Field
          Text(
            'First Name',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Emmanuel ',
              suffixIcon: Icon(
                Icons.check,
                color: appColors.backgroundColor,
              ),
              hintStyle: TextStyle(
                color: appColors.blackTextColor,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: appColors.milkishColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: appColors.backgroundColor,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          SizedBox(height: getProportionateScreenHeight(10)),
          // Last Name TextForm Field
          Text(
            'Last Name',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Oyiboke ',
              suffixIcon: Icon(
                Icons.check,
                color: appColors.backgroundColor,
              ),
              hintStyle: TextStyle(
                color: appColors.blackTextColor,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: appColors.milkishColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: appColors.backgroundColor,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),

          // Location TextForm Field
          Text(
            'Location',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Nigeria ',
              suffixIcon: Icon(
                Icons.check,
                color: appColors.backgroundColor,
              ),
              hintStyle: TextStyle(
                color: appColors.blackTextColor,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: appColors.milkishColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: appColors.backgroundColor,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          
          // Mobile  Number TextForm Field
          Text(
            'Mobile Number',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          IntlPhoneField(
            keyboardType: TextInputType.text,
            initialCountryCode: 'NG',
            onChanged: (phone) {
              // print(phone.completeNumber);
            },
            decoration: InputDecoration(
              // labelText: 'Nigeria',
              suffixIcon: Icon(
                Icons.check,
                color: appColors.backgroundColor,
              ),
              hintStyle: TextStyle(
                color: appColors.blackTextColor,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: appColors.milkishColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: appColors.backgroundColor,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
