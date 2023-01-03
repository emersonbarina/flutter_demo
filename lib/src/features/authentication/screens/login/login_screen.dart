import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/constants/image_strings.dart';
import 'package:flutter_demo_theme/src/constants/sizes.dart';
import 'package:flutter_demo_theme/src/constants/text_strings.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(size: size),
                const LoginForm(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(tOrOption),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          icon: const Image(
                            image: AssetImage(tGoogleImage),
                            width: 20,
                          ),
                          onPressed: () {},
                          label: const Text(tSignInWithGoogle)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
