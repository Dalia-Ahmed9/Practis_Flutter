import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:practis_flutter/Home/home_Screen.dart';
import 'package:practis_flutter/onboarding/onboarding_Const.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final List<Introduction> list = [
    Introduction(imageUrl: image1, title: title1, subTitle: SubTitle1),
    Introduction(imageUrl: image2, title: title2, subTitle: SubTitle2),
    Introduction(imageUrl: image3, title: title3, subTitle: SubTitle3),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      ),
      skipTextStyle: TextStyle(
        color: onBoardingColor.darkBlue,
        fontSize: 20,
      ),
    );
  }
}
