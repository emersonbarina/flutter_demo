import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

import '../../../constants/sizes.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  Future<void> loginUser(String email, String password) async {
    String? error = await AuthenticationRepository.instance.loginWithEmailAndPassword(email, password);
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString(), duration: const Duration(seconds: tDurationSecondsSnackBar)));
    }
  }
}