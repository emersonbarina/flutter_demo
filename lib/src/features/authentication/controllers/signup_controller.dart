import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

import '../../../constants/sizes.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  Future<void> registerUser(String email, String password) async {
    String? error = await AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
    if( error != null ){
      Get.showSnackbar(GetSnackBar(message: error.toString(), duration: const Duration(seconds: tDurationSecondsSnackBar)));
    }
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}