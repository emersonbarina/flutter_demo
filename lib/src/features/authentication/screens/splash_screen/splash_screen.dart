import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/constants/splash_screen/colors.dart';
import 'package:flutter_demo_theme/src/constants/splash_screen/image_strings.dart';
import 'package:flutter_demo_theme/src/constants/splash_screen/sizes.dart';
import 'package:flutter_demo_theme/src/constants/splash_screen/text_strings.dart';
import 'package:flutter_demo_theme/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  //SplashScreenController splashScreenController = SplashScreenController();
  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 0 : -40,
              left: splashController.animate.value ? 0 : -40,
              child: const Image(image: AssetImage(tSplashTopIcon)),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 100,
              left: splashController.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      tAppTagLine,
                      style: Theme.of(context).textTheme.headline4,
                    )
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 100 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: const Image(image: AssetImage(tSplashImage)),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 60 : 0,
              right: tDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
