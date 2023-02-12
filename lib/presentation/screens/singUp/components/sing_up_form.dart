import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Name',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: '********',
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
                )),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Text(
            'Email Address',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: 'xyz@gmail.com',
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
                )),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Text(
            'Password',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              hintText: '***********',
              suffixIcon: const Icon(Icons.visibility_off),
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
        ],
      ),
    );
  }
}
