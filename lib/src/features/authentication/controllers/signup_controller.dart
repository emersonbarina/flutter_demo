import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/features/authentication/models/user_model.dart';
import 'package:flutter_demo_theme/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_demo_theme/src/repository/user_repository/user_repository.dart';
import 'package:get/get.dart';

import '../../../constants/sizes.dart';
import '../screens/forget_password/forget_password_otp/otp_screen.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  Future<void> registerUser(String email, String password) async {
    String? error = await AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
    if( error != null ){
      Get.showSnackbar(GetSnackBar(message: error.toString(), duration: const Duration(seconds: tDurationSecondsSnackBar)));
    }
  }

  Future<void> createUser(UserModel userModel) async {
    await userRepo.createUser(userModel);
    phoneAuthentication(userModel.phoneNo);
    Get.to(() => const OTPScreen());
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}