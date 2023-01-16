
class SignInWithEmailAndPasswordFailure {
  final String message;

  const SignInWithEmailAndPasswordFailure([this.message = "An unknown error occurred."]);

  factory SignInWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'user-not-found' : return const SignInWithEmailAndPasswordFailure('Email is note found. Please verify.');
      case 'wrong-password' : return const SignInWithEmailAndPasswordFailure('Thrown if the password is invalid for the given email.');
      case 'invalid-email' : return const SignInWithEmailAndPasswordFailure('Email is not valid ou badly formatted.');
      case 'user-disabled' : return const SignInWithEmailAndPasswordFailure('This user has been disabled. Please contact support for help.');
      default: return const SignInWithEmailAndPasswordFailure();
    }
  }
}