import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils.dart';
import 'profile_page.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool _isHidden = true;
  DateTime date = DateTime(2022, 18, 24);

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  String? name;
  String? job;
  String? email;

  final TextEditingController _name = TextEditingController(text: '');
  final TextEditingController _job = TextEditingController(text: '');
  final TextEditingController _email = TextEditingController(text: '');

  @override
  void dispose() {
    _name.dispose();
    _job.dispose();
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbg,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          scrollDirection: Axis.vertical,
          children: [
            Row(
              children: [
                Text(
                  'Edit profile',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage(
                                email: email,
                                name: name,
                                job: job,
                              )),
                    );
                  },
                  child: Text(
                    'Done',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                'https://picsum.photos/1000',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'MAVERUZ',
                  style: GoogleFonts.montserrat(
                    fontSize: 26,
                    letterSpacing: 1,
                    color: black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Mobile Developer',
                  style: GoogleFonts.montserrat(
                    color: greyfortext,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Text(
              'Name',
              style: GoogleFonts.montserrat(
                fontSize: 18,
                color: greyfortext,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            TextField(
              onChanged: (value) => name = value,
              style: GoogleFonts.montserrat(
                fontSize: 18,
                color: black,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
              controller: _name,
              cursorColor: black,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: black),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: black),
                ),
                hintText: 'Name',
                hintStyle: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Job',
              style: GoogleFonts.montserrat(
                fontSize: 18,
                color: greyfortext,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            TextField(
              onChanged: (value) => job = value,
              controller: _job,
              cursorColor: black,
              style: GoogleFonts.montserrat(
                fontSize: 18,
                color: black,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: black),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: black),
                ),
                hintText: 'Job Description',
                hintStyle: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Email',
              style: GoogleFonts.montserrat(
                fontSize: 18,
                letterSpacing: 1,
                color: greyfortext,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            TextField(
              onChanged: (value) => email = value,
              controller: _email,
              cursorColor: black,
              keyboardType: TextInputType.emailAddress,
              style: GoogleFonts.montserrat(
                fontSize: 18,
                color: black,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: black),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: black),
                ),
                hintText: 'Email',
                hintStyle: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: black,
                  fontWeight: FontWeight.w600,
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
                letterSpacing: 1,
                color: greyfortext,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            TextField(
              cursorColor: black,
              obscureText: _isHidden,
              keyboardType: TextInputType.emailAddress,
              style: GoogleFonts.montserrat(
                fontSize: 18,
                color: black,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
              decoration: InputDecoration(
                suffixIconColor: black,
                suffixIcon: IconButton(
                  icon: InkWell(
                    onTap: _togglePasswordView,
                    child: Icon(
                      _isHidden ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
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
                  fontSize: 18,
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Text(
              'Birth date (Opsional)',
              style: GoogleFonts.montserrat(
                fontSize: 18,
                color: greyfortext,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Day: ${date.day}',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: greyfortext,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Text(
                  'Month: ${date.month}',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: greyfortext,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Text(
                  'Year: ${date.year}',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: greyfortext,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Column(
              children: [
                SizedBox(
                  width: 300,
                  height: 40,
                  child: OutlinedButton(
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: date,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));

                      // if ‘CANCEL’ => null
                      if (newDate == null) return;

                      // if 'OK' => DateTime
                      setState(() => date = newDate);
                    },
                    child: Text(
                      'Choose Date',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: greyfortext,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
