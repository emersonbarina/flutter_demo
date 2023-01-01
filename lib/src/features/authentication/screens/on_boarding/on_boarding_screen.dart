import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/constants/image_strings.dart';
import 'package:flutter_demo_theme/src/constants/sizes.dart';
import 'package:flutter_demo_theme/src/constants/text_strings.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../../constants/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              Container(
                padding: EdgeInsets.all(tDefaultSize),
                color: tOnBoardingPage1Color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(tOnBoardingImage1),
                      height: size.height * 0.5,
                    ),
                    Column(
                      children: [
                        Text(
                          tOnBoardingTitle1,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          tOnBoardingSubTitle1,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Text(
                      tOnBoardingCounter1,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(
                      height: 50.0,
                    )
                  ],
                ),
              ),
              Container(
                color: tOnBoardingPage2Color,
              ),
              Container(
                color: tOnBoardingPage3Color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
