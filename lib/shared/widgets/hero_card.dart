import 'package:flutter/material.dart';
import 'package:slot_booking/gen/colors.gen.dart';
import 'package:slot_booking/shared/constants/font/font_constants.dart';

import '../../gen/fonts.gen.dart';
import '../text_widgets/build_text.dart';

class HeroCard extends StatelessWidget {
  const HeroCard(
      {Key? key,
      required this.img,
      required this.title,
      required this.subtitle})
      : super(key: key);

  final Image img;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipPath(
            clipper: BackgroundClipper(),
            child: Hero(
              tag: 'Background',
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 1 * 1.33,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [ColorName.colorLoginButton, Colors.black],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Hero(
            tag: 'image_hero',
            child: Image(
              image: img.image,
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 40,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildText(
                  text: title,
                  family: FontFamily.poppinsBold,
                  fontSize: 10.0.large26px(),
                  color: Colors.white,
                ),
                BuildText(
                  text: subtitle,
                  family: FontFamily.poppinsRegular,
                  fontSize: 10.0.medium15px(),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 50.0;

    var path = Path();

    path.moveTo(0, size.height * 0.33);
    path.lineTo(0, size.height - roundnessFactor);
    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    path.lineTo(size.width - roundnessFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundnessFactor);
    path.lineTo(size.width, roundnessFactor * 2);
    path.quadraticBezierTo(size.width - 10, roundnessFactor,
        size.width - roundnessFactor * 1.5, roundnessFactor * 1.5);
    path.lineTo(
        roundnessFactor * 0.6, size.height * 0.33 - roundnessFactor * 0.3);
    path.quadraticBezierTo(
        0, size.height * 0.33, 0, size.height * 0.33 + roundnessFactor);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
