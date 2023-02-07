import 'package:flutter/material.dart';
import 'package:slot_booking/features/welcome/screen/welcome_screen.dart';
import 'package:slot_booking/features/welcome/screen/welcome_screen_one.dart';
import 'package:slot_booking/gen/colors.gen.dart';
import 'package:slot_booking/shared/constants/font/font_constants.dart';
import '../../../gen/fonts.gen.dart';
import '../../../shared/constants/font/size_config.dart';
import '../../../shared/text_widgets/build_text.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "/splashScreen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //height and width
  double height = 0.0;
  double width = 0.0;

  @override
  void initState() {
    _checkUserLogin();
    super.initState();
    
  }

  _checkUserLogin() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil( WelcomeScreen.routeName, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    height = SizeConfig.safeBlockVertical!;
    width = SizeConfig.safeBlockHorizontal!;
    return Scaffold(
      body: _createBody(),
    );
  }

//Create body
  Widget _createBody() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorName.colorLoginButton, Colors.black],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Center(
        child: BuildText(
          text: 'Slot',
          family: FontFamily.poppinsBold,
          fontSize: 10.0.large28px(),
          color: Colors.white,
        ),
      ),
    );
  }
}
