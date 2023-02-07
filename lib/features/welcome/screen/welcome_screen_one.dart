import 'package:flutter/material.dart';
import 'package:slot_booking/gen/assets.gen.dart';
import 'package:slot_booking/shared/constants/font/font_constants.dart';
import 'package:slot_booking/shared/widgets/hero_card.dart';

import '../../../gen/fonts.gen.dart';
import '../../../shared/constants/font/size_config.dart';
import '../../../shared/text_widgets/build_text.dart';

class WelcomeScreenOne extends StatefulWidget {
  static const String routeName = "/welcomeScreenOne";
  const WelcomeScreenOne({Key? key}) : super(key: key);

  @override
  State<WelcomeScreenOne> createState() => _WelcomeScreenOneState();
}

class _WelcomeScreenOneState extends State<WelcomeScreenOne> {
  //height and width
  double height = 0.0;
  double width = 0.0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    height = SizeConfig.safeBlockVertical!;
    width = SizeConfig.safeBlockHorizontal!;
    return Scaffold(
        body: _createBody());
  }

//Create body
  Widget _createBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 5),
          BuildText(
            text: 'Slot App',
            family: FontFamily.poppinsBold,
            fontSize: 10.0.large26px(),
            color: Colors.black,
          ),
          Expanded(
            child: HeroCard(
              img: Assets.images.welcomeScreenOne.image(scale: 1.5),
              title: 'Football',
              subtitle: 'Click for more details',
            ),
          ),
        ],
      ),
    );
  }
}
