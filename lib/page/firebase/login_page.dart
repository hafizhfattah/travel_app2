import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldbg,
        appBar: AppBar(
          title: Text(
            'Login Page',
            style: GoogleFonts.montserrat(
                letterSpacing: 1, fontWeight: FontWeight.w500, color: white),
          ),
          backgroundColor: black,
        ),
        body: Center(
            child: OutlinedButton(
          onPressed: () {
            AuthService().signInWithGoogle();
          },
          child: Text(
            'Login',
            style: GoogleFonts.montserrat(
                letterSpacing: 1,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: blue),
          ),
        )));
  }
}
