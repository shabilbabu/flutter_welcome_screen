import 'package:flutter/material.dart';
import 'package:slot_booking/features/splash/screen/splash_screen.dart';
import 'package:slot_booking/features/welcome/screen/welcome_screen_one.dart';
import 'package:slot_booking/features/welcome/screen/welcome_screen_three.dart';
import 'package:slot_booking/features/welcome/screen/welcome_screen_two.dart';
import 'package:slot_booking/routes/routes.dart';
import 'package:slot_booking/shared/services/navigation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
 const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slot Booking',
      routes: Routes.routes,
      navigatorKey: NavigationService.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}