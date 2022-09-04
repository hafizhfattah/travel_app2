import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils.dart';

class ProfilePage extends StatefulWidget {
  final String? name;
  final String? job;
  final String? email;

  const ProfilePage({
    Key? key,
    this.email,
    this.job,
    this.name,
  }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'My Profile',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    "https://picsum.photos/1000",
                  ),
                ),
                const SizedBox(
                  width: 22,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name ?? 'Om Ben',
                      style: GoogleFonts.montserrat(
                        fontSize: 26,
                        letterSpacing: 1,
                        color: black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.job ?? 'Developer',
                      style: GoogleFonts.montserrat(
                        color: greyfortext,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      widget.email ?? 'email@example.com',
                      style: GoogleFonts.montserrat(
                        color: greyfortext,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 45.0,
                    width: 106,
                    decoration: const BoxDecoration(
                      color: black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          50.0,
                        ),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      'Eat',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: white),
                    )),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Container(
                    height: 45.0,
                    width: 106,
                    decoration: const BoxDecoration(
                      color: black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          50.0,
                        ),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      'Play',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: white),
                    )),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Container(
                    height: 45.0,
                    width: 106,
                    decoration: const BoxDecoration(
                      color: black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          50.0,
                        ),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      'Sleep',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: white),
                    )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Dashboard',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: greyfortext,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 33,
                  backgroundColor: greenforlogo,
                  child: Center(child: Image.asset('assets/wallet.png')),
                ),
                const SizedBox(
                  width: 17,
                ),
                Text(
                  'Payment',
                  style: GoogleFonts.montserrat(
                      fontSize: 18, fontWeight: FontWeight.bold, color: black),
                ),
                const Spacer(),
                Container(
                  height: 35,
                  width: 80,
                  decoration: const BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        50.0,
                      ),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    '2 news',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: white),
                  )),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 33,
                  backgroundColor: CupertinoColors.systemYellow,
                  child: Center(child: Image.asset('assets/awards.png')),
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  'Achivements',
                  style: GoogleFonts.montserrat(
                      fontSize: 18, fontWeight: FontWeight.bold, color: black),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 33,
                  backgroundColor: greyforlogo,
                  child: Center(
                    child: Icon(
                      CupertinoIcons.lock_shield_fill,
                      color: white,
                      size: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'Privacy',
                  style: GoogleFonts.montserrat(
                      fontSize: 18, fontWeight: FontWeight.bold, color: black),
                ),
                const SizedBox(
                  width: 26,
                ),
                const Spacer(),
                Container(
                  height: 35,
                  width: 130,
                  decoration: const BoxDecoration(
                    color: orange,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        50.0,
                      ),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'Actions Needed',
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: white),
                  )),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 33,
                  backgroundColor: red,
                  child: Center(
                    child: Icon(
                      CupertinoIcons.archivebox_fill,
                      color: white,
                      size: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'Archive',
                  style: GoogleFonts.montserrat(
                      fontSize: 18, fontWeight: FontWeight.bold, color: black),
                ),
                const SizedBox(
                  width: 26,
                ),
                const Spacer(),
                Container(
                  height: 35,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: CupertinoColors.systemGreen,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        50.0,
                      ),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    '3 Archived',
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: white),
                  )),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/editprofile');
                  },
                  child: Text(
                    'Edit profile',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: greyfortext,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Switch To Another Account',
              style: GoogleFonts.montserrat(
                fontSize: 20,
                color: blue,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/opening'),
              child: Text(
                'Logout',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  color: red,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
