import 'package:flutter/material.dart';
import 'package:slot_booking/features/auth/register/screen/continue_screen.dart';
import 'package:slot_booking/features/splash/screen/splash_screen.dart';
import 'package:slot_booking/features/welcome/screen/welcome_screen.dart';
import 'package:slot_booking/features/welcome/screen/welcome_screen_one.dart';
import 'package:slot_booking/features/welcome/screen/welcome_screen_three.dart';
import 'package:slot_booking/features/welcome/screen/welcome_screen_two.dart';

import '../features/auth/login/screen/login_screen.dart';

class Routes{
  static var routes = {
    LoginScreen.routeName: (BuildContext ctx) => const LoginScreen(),
    ContinueScreen.routeName: (BuildContext ctx) => const ContinueScreen(),
    SplashScreen.routeName: (BuildContext ctx) => const SplashScreen(),
    WelcomeScreenOne.routeName: (BuildContext ctx) => const WelcomeScreenOne(),
    WelcomeScreenTwo.routeName: (BuildContext ctx) => const WelcomeScreenTwo(),
    WelcomeScreenThree.routeName: (BuildContext ctx) => const WelcomeScreenThree(),
    WelcomeScreen.routeName: (BuildContext ctx) => const WelcomeScreen(),
  };
}