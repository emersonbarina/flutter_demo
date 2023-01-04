import 'package:flutter/material.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(tOrOption.toUpperCase()),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(tGoogleImage),
                width: tFormHeight - 10,
              ),
              label: const Text(tSignInWithGoogle)),
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
                children: [
                  TextSpan(text: tAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyText1),
                  const TextSpan(text: tLogin,),
                ]
            ),
          ),
        ),
      ],
    );
  }
}
