import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Image.network(
              'https://picsum.photos/1000',
              fit: BoxFit.cover,
              height: 316,
              width: double.maxFinite,
              filterQuality: FilterQuality.high,
              errorBuilder: (context, error, stackTrace) =>
                  const CircularProgressIndicator.adaptive(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Container(
                height: 550.0,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.only(
                      top: 16, left: 16, right: 16, bottom: 100),
                  children: [
                    Text(
                      'Forgot Password',
                      style: GoogleFonts.montserrat(
                        fontSize: 36,
                        color: black,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Name',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: black,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    TextField(
                      cursorColor: black,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: black),
                        ),
                        hintText: 'Email',
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: black,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        height: 48,
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              duration: const Duration(seconds: 2),
                              backgroundColor: black,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              behavior: SnackBarBehavior.fixed,
                              action: SnackBarAction(
                                  label: 'Undo', onPressed: () {}),
                              elevation: 0,
                              content: Text(
                                'Code OTP Send To Email',
                                style: GoogleFonts.montserrat(
                                    color: white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          child: Text(
                            'Submit',
                            style: GoogleFonts.montserrat(
                                letterSpacing: 1,
                                color: white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/signin');
                        },
                        child: Text(
                          'Back To Login',
                          style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                              color: black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
