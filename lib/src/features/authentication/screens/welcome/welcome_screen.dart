import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:flutter_demo_theme/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_demo_theme/src/constants/colors.dart';
import 'package:flutter_demo_theme/src/constants/image_strings.dart';
import 'package:flutter_demo_theme/src/constants/sizes.dart';
import 'package:flutter_demo_theme/src/constants/text_strings.dart';
import 'package:flutter_demo_theme/src/features/authentication/screens/login/login_screen.dart';
import 'package:get/get.dart';

import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../SignUp/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animate: TAnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftBefore: 0,
                leftAfter: 0,
                topAfter: 0,
                topBefore: 0,
                rightAfter: 0,
                rightBefore: 0),
            child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Hero(
                    tag: 'welcome-image-tag',
                    child: Image(
                      image: const AssetImage(tWelcomeScreenImage),
                      height: height * 0.6,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        tWelcomeTitle,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        tWelcomeSubTitle,
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => const LoginScreen()),
                          child: Text(tLogin.toUpperCase()),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => const SignUpScreen()),
                          child: Text(tSignup.toUpperCase()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
