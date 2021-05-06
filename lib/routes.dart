import 'package:eshop/screens/details/pdt_detail_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:eshop/screens/cart/cart_screen.dart';
import 'package:eshop/screens/complete_profile/complete_profile_screen.dart';
import 'package:eshop/screens/home/home_screen.dart';
import 'package:eshop/screens/sign_in/sign_in_screen.dart';
import 'package:eshop/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};
