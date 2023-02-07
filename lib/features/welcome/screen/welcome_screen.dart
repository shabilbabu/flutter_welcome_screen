
import 'package:flutter/material.dart';
import 'package:slot_booking/features/welcome/screen/welcome_screen_one.dart';
import 'package:slot_booking/features/welcome/screen/welcome_screen_three.dart';
import 'package:slot_booking/features/welcome/screen/welcome_screen_two.dart';
import 'package:slot_booking/shared/constants/font/font_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../gen/colors.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../shared/constants/font/size_config.dart';
import '../../../shared/constants/string_constants.dart';
import '../../../shared/text_widgets/build_text.dart';
import '../../auth/login/screen/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = "/welcomeScreen ";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

 
  PageController controller = PageController();

  
  bool onLastPage = false;

  
  void boolianUpdate(value){
    setState(() {
      onLastPage = (value == 2);
    });
  }

  double height = 0.0;
  double width = 0.0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    height = SizeConfig.safeBlockVertical!;
    width = SizeConfig.safeBlockHorizontal!;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            pageViewSection(),
            secondSection(),
          ],
        ),
      ),
    );
  }

//Pageview section
  Widget pageViewSection() {
    return PageView(
      onPageChanged: ((index) {
        boolianUpdate(index);
      }),
      controller: controller,
      children: const [
        WelcomeScreenOne(),
        WelcomeScreenTwo(),
        WelcomeScreenThree(),
      ],
    );
  }

//Second Section
  Widget secondSection() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 6, vertical: height * 12),
        width: MediaQuery.of(context).size.width,
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
              effect: const ExpandingDotsEffect(
                spacing: 10,
                radius: 5,
                dotWidth: 2,
                dotHeight: 12,
                dotColor: ColorName.colorTextFormFieldText,
                activeDotColor: Colors.black,
              ),
              controller:controller,
              count: 3,
            ),
            screenButtonSection(),
          ],
        ),
      ),
    );
  }

//Screen button
  Widget screenButtonSection() {
    return onLastPage
        ? InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
            },
            child: BuildText(
              text: 'Get start',
              color: Colors.black,
              family: FontFamily.poppinsmedium,
              fontSize: 10.0.small13px(),
            ),
          )
        : InkWell(
            onTap: () {
              controller.nextPage(
                duration: const Duration(
                  milliseconds: 500,
                ),
                curve: Curves.easeIn,
              );
            },
            child: BuildText(
              text: 'Get start',
              color: Colors.transparent,
              family: FontFamily.poppinsmedium,
              fontSize: 10.0.small13px(),
            ),
          );
  }
}
