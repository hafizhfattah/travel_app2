import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_methode/utils.dart';
import 'package:flutter/material.dart';

import 'page/auth/forgot_password.dart';
import 'page/auth/sign_in.dart';
import 'page/auth/sign_up.dart';
import 'page/home/detail_page.dart';
import 'page/home/home_page.dart';
import 'page/other/opening_screen.dart';
import 'page/other/splash_screen.dart';
import 'page/other/web_view_Example.dart';
import 'page/profile/edit_profile.dart';
import 'page/profile/profile_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: AuthService().handleAuthState(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/splash': (BuildContext context) => const SplashScreen(),
        '/opening': (BuildContext context) => const OpeningScreen(),
        '/home': (BuildContext context) => const HomePage(),
        '/web': (BuildContext context) => const WebViewExample(),
        '/profile': (BuildContext context) => const ProfilePage(),
        '/editprofile': (BuildContext context) => const EditProfile(),
        '/signin': (BuildContext context) => const SignIn(),
        '/signup': (BuildContext context) => const SignUp(),
        '/forgot': (BuildContext context) => const ForgotPassword(),
        '/detail': (BuildContext context) => const DetailPage(),
      },
    );
  }
}
