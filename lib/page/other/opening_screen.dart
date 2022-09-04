import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils.dart';
import '../home/home_page.dart';
import '../profile/profile_page.dart';
import 'web_view_Example.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({Key? key}) : super(key: key);

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  int currentIndex = 1;

  final navScreen = [
    const WebViewExample(),
    const HomePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 100,
        width: 300,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              32.0,
            ),
          ),
          child: BottomNavigationBar(
              selectedFontSize: 16,
              selectedLabelStyle: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500, color: black),
              selectedItemColor: orange,
              type: BottomNavigationBarType.shifting,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search),
                  label: 'Search',
                  backgroundColor: black,
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home),
                  label: 'Home',
                  backgroundColor: black,
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person),
                  label: 'Profile',
                  backgroundColor: black,
                ),
              ]),
        ),
      ),
      body: navScreen[currentIndex],
    );
  }
}
