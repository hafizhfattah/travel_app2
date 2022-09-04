import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils.dart';

class HomeFire extends StatefulWidget {
  const HomeFire({super.key});

  @override
  State<HomeFire> createState() => _HomeFireState();
}

class _HomeFireState extends State<HomeFire> {
  String? user = FirebaseAuth.instance.currentUser!.email ??
      FirebaseAuth.instance.currentUser!.displayName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              FirebaseAuth.instance.currentUser!.displayName!,
              style: GoogleFonts.montserrat(
                  fontSize: 22,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                  color: black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              FirebaseAuth.instance.currentUser!.email!,
              style: GoogleFonts.montserrat(
                  fontSize: 16,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                  color: black),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  padding: const EdgeInsets.all(10),
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Log Out',
                    style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                        color: white),
                  ),
                  onPressed: () {
                    AuthService().signOut();
                  },
                ),
                const SizedBox(width: 30.0),
                OutlinedButton(
                  child: Text(
                    'Next',
                    style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                        color: blue),
                  ),
                  onPressed: () =>
                      Navigator.of(context).pushReplacementNamed('/splash'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
