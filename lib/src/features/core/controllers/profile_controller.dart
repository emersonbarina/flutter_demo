import 'package:flutter_demo_theme/src/features/authentication/models/user_model.dart';
import 'package:flutter_demo_theme/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

import '../../../repository/user_repository/user_repository.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  // Repositories
  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  // Get User Email and pass to UserRepository to fetch user record
  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;
    if(email != null){
      return _userRepo.getUserDetails(email);
    } else {
      Get.snackbar("Error", "Login to continue");
    }
  }

  // Fetch list of user records
  Future<List<UserModel>> getAllUser() async {
    return await _userRepo.allUser();
  }


  updateRecord(UserModel userModel) async {
    await _userRepo.updateUserRecord(userModel);
  }

}
