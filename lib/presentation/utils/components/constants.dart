import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: Color(0xFF757575)),
  );
}

String apiKey = "AIzaSyAi8PUJEuKrVSU8fIL56hz4b1FPuIQk7G0";

const String productDesc =
    "The Max Air 270Unit Delivers Unrivaled, All-Day Comfort, The Sleek, Running-inspired Design Roots You To Everything Nike.";
