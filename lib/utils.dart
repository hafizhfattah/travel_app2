import 'package:firebase_methode/page/firebase/home_fire.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'page/firebase/login_page.dart';

//RGBO
const scaffoldbg = Color.fromRGBO(245, 245, 245, 1);
const greyfortext = Color.fromRGBO(141, 141, 141, 1);
const greyforlogo = Color.fromRGBO(216, 218, 222, 1);
const greenforlogo = Color.fromRGBO(94, 188, 125, 1);

//Basic
const red = CupertinoColors.systemRed;
const white = CupertinoColors.white;
const black = CupertinoColors.black;
const blue = CupertinoColors.systemBlue;
const orange = CupertinoColors.systemOrange;

//List Search
List<String> listItems = [
  'nusa tenggara timur, indonesia',
  'kota budapest di hungaria',
  'buffalo di new york, amerika serikat',
  'tunisia, afrika ytara',
  'cape town, afrika selatan',
  'bromo, jatim',
  'merapi, jogja',
  'bali, indonesia',
  'kerry, irlandia',
  'paris, prancis',
  'dubai',
  'roma, italia',
  'tokyo, jepang',
  'havana, kuba',
  'antartika',
  'kanada',
  'moskow, rusia',
  'singapura',
  'disneyland, hong kong',
  'amsterdam',
  'seoul, korea',
  'kairo, mesir',
];

class AuthService {
//handle auth state
  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return const HomeFire();
          } else {
            return const LoginPage();
          }
        });
  }

//sign in with google
  signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>["email"]).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

//Sign out
  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
