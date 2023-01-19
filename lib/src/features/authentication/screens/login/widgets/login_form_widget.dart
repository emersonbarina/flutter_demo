import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/features/authentication/controllers/login_controller.dart';
import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

import '../../forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
//    final formKey = GlobalKey<FormState>();

    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.email,
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
            buildTextFormField(controller),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: const Text(tForgetPassword),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  LoginController.instance.loginUser(
                      controller.email.text.trim(),
                      controller.password.text.trim());
                },
                child: Text(tLogin.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildTextFormField(LoginController controller) {
    return TextFormField(
            controller: controller.password,
            obscureText: _isObscure,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.key_outlined),
              labelText: tPassword,
              hintText: tPassword,
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                icon: Icon( _isObscure
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined),
              ),
            ),
          );
  }
}
