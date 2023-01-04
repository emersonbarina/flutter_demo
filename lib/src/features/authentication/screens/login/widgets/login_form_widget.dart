import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: tEmail,
                hintText: tEmail,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.key_outlined),
                  labelText: tPassword,
                  hintText: tPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp),
                  )),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    builder: (context) => Container(
                      padding: const EdgeInsets.all(tDefaultSize),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tForgetPasswordTitle,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Text(
                            tForgetPasswordSubTitle,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          ForgetPasswordBtnWidget(
                            onTap: (){},
                            btnIcon: Icons.mail_outline_outlined,
                            title: tEmail,
                            subTitle: tForgetPasswordResetViaEmail,
                          ),
                          const SizedBox(height: 20.0,),
                          ForgetPasswordBtnWidget(
                            onTap: (){},
                            btnIcon: Icons.mobile_friendly_outlined,
                            title: tPhoneNumber,
                            subTitle: tForgetPasswordResetViaPhone,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: const Text(tForgetPassword),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(tLogin.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    Key? key,
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onTap,
  }) : super(key: key);

  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(
              btnIcon,
              size: 60.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
