import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '/../../config.dart';

class LoginController extends GetxController {

  @override
  void onReady() {
    update();
    super.onReady();
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    LoadingController.to.setIsLoading(true);
    // Once signed in, return the UserCredential
    UserCredential user = await FirebaseAuth.instance.signInWithCredential(credential);
    LoadingController.to.setIsLoading(false);
    return user;
  }
}