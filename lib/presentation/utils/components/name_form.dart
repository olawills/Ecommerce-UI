import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class NameForm extends StatelessWidget {
  const NameForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return TextFormField(
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
    );
  }
}
