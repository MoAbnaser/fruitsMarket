import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_market/features/Auth/domain/repositories/auth_repo.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepoImpl extends AuthRepo
{
  @override
  Future completeInformation({String? name, String? phoneNumber, String? address}) {
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() {
    throw UnimplementedError();
  }

  @override
  Future <UserCredential> loginWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
  
}