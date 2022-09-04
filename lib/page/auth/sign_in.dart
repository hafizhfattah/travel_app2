import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Image.network(
              "https://picsum.photos/1000",
              fit: BoxFit.cover,
              height: 316,
              width: double.maxFinite,
              filterQuality: FilterQuality.high,
              errorBuilder: (context, error, stackTrace) =>
                  const CircularProgressIndicator.adaptive(),
            ),
            Positioned(
              top: 70,
              left: 20,
              child: GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushReplacementNamed('/opening'),
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: white,
                  child: Padding(
                    padding: EdgeInsets.only(right: 2),
                    child: Icon(
                      CupertinoIcons.back,
                      color: orange,
                    ),
                  ),
                ),
              ),
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
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign ',
                            style: GoogleFonts.montserrat(
                              fontSize: 36,
                              color: black,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          TextSpan(
                            text: 'In',
                            style: GoogleFonts.montserrat(
                              fontSize: 36,
                              color: orange,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
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
                    Text(
                      'Password',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: black,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    TextField(
                      cursorColor: black,
                      obscureText: _isHidden,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        suffixIconColor: black,
                        suffixIcon: IconButton(
                          icon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden
                                  ? CupertinoIcons.eye_slash
                                  : CupertinoIcons.eye,
                            ),
                          ),
                          onPressed: () {},
                          color: black,
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: black),
                        ),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: black,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/forgot');
                          },
                          child: Text(
                            'Forgot Pasword?',
                            style: GoogleFonts.montserrat(
                                color: black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: SizedBox(
                        height: 48,
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          child: Text(
                            'Sing In',
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
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dont Have Account?',
                          style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                              color: black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/signup');
                          },
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.montserrat(
                                letterSpacing: 1,
                                color: black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: Divider(
                            color: black,
                          ),
                        ),
                        Text(
                          ' Or Login With ',
                          style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                              color: black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const Expanded(
                          child: Divider(
                            color: black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 4,
                              blurRadius: 5,
                              offset: const Offset(0, 7),
                            ),
                          ], color: white, shape: BoxShape.circle),
                          child: Image.network(
                              'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png'),
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 4,
                              blurRadius: 5,
                              offset: const Offset(0, 7),
                            ),
                          ], color: white, shape: BoxShape.circle),
                          child: Image.network(
                              'https://1.bp.blogspot.com/-Gk7PJfZlTKM/YI0265VKDVI/AAAAAAAAE20/tSbccfFLIPAGclfx2il52vPUdwR8TJJsQCLcBGAsYHQ/s1600/Logo%2BFacebook%2BFormat%2BPNG.png'),
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 4,
                              blurRadius: 5,
                              offset: const Offset(0, 7),
                            ),
                          ], color: white, shape: BoxShape.circle),
                          child: Image.network(
                              'https://www.freepnglogos.com/uploads/twitter-logo-png/twitter-logo-vector-png-clipart-1.png'),
                        ),
                      ],
                    ),
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
