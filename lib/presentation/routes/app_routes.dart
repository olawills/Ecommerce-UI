import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/cart/cart_screen.dart';
import 'package:nike_store/presentation/screens/checkout/checkout_screen.dart';
import 'package:nike_store/presentation/screens/edit_profile/edit_profile_screen.dart';
import 'package:nike_store/presentation/screens/notification/notification_screen.dart';
import 'package:nike_store/presentation/screens/profile/profile_screen.dart';
import 'package:nike_store/presentation/screens/shop/shop_screen.dart';
import 'package:nike_store/presentation/screens/favorites/favorite_screen.dart';
import 'package:nike_store/presentation/screens/forgot_password/forgot_password.dart';
import 'package:nike_store/presentation/screens/home_screen/home_screen.dart';
import 'package:nike_store/presentation/screens/otp/otp_screen.dart';
import 'package:nike_store/presentation/screens/signIn/sign_in_screen.dart';
import 'package:nike_store/presentation/screens/singUp/sign_up_screen.dart';
import 'package:nike_store/presentation/screens/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  FavoriteScreen.routeName: (context) => const FavoriteScreen(),
  ShopScreen.routeName: (context) => const ShopScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  CheckoutScreen.routeName: (context) => const CheckoutScreen(),
  NotificationScreen.routeName: (context) => const NotificationScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  EditProfileScreen.routeName: (context)=> const EditProfileScreen(),
};
