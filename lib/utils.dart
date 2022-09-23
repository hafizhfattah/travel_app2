import 'package:firebase_methode/page/firebase/home_fire.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'page/firebase/login_page.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

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

//Service
Future<Album> fetchAlbum() async {
  const starturl = 'https://api.themoviedb.org/3/movie/';
  const endpoint = '111';
  const lasturl = '?api_key=62da2ccde4fec045442969ffaa982e6e';

  final response = await http.get(Uri.parse(starturl + endpoint + lasturl));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to Load');
  }
}

//Class Model
class Album {
  final String overview;
  final String title;
  final String poster;

  const Album({
    required this.overview,
    required this.title,
    required this.poster,
  });

  factory Album.fromJson(Map<String, dynamic> e) {
    return Album(
      overview: e['overview'],
      title: e['original_title'],
      poster: e['poster_path'],
    );
  }
}

//Service
Future<Alone> fetchAlone() async {
  const starturl = 'https://api.themoviedb.org/3/movie/';
  const endpoint = '222';
  const lasturl = '?api_key=62da2ccde4fec045442969ffaa982e6e';

  final response = await http.get(Uri.parse(starturl + endpoint + lasturl));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Alone.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to Load');
  }
}

//Class Model
class Alone {
  final String overview;
  final String title;
  final String poster;

  const Alone({
    required this.overview,
    required this.title,
    required this.poster,
  });

  factory Alone.fromJson(Map<String, dynamic> e) {
    return Alone(
      overview: e['overview'],
      title: e['original_title'],
      poster: e['poster_path'],
    );
  }
}

//Service
Future<Altwo> fetchAltwo() async {
  const starturl = 'https://api.themoviedb.org/3/movie/';
  const endpoint = '620';
  const lasturl = '?api_key=62da2ccde4fec045442969ffaa982e6e';

  final response = await http.get(Uri.parse(starturl + endpoint + lasturl));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Altwo.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load');
  }
}

//Class Model
class Altwo {
  final String overview;
  final String title;
  final String poster;

  const Altwo({
    required this.overview,
    required this.title,
    required this.poster,
  });

  factory Altwo.fromJson(Map<String, dynamic> e) {
    return Altwo(
      overview: e['overview'],
      title: e['original_title'],
      poster: e['poster_path'],
    );
  }
}
