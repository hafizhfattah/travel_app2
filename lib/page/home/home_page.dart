// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTapped = false;

  late Future<Album> futureAlbum;
  late Future<Alone> futureAlone;
  late Future<Altwo> futureAltwo;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
    futureAlone = fetchAlone();
    futureAltwo = fetchAltwo();
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
              Row(children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://picsum.photos/1000'),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  'Hi, Om Ben',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: black,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => Center(
                      child: AlertDialog(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        insetPadding: const EdgeInsets.all(16),
                        content: StatefulBuilder(builder:
                            (BuildContext context, StateSetter setState) {
                          return Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 30, bottom: 16),
                            height: 371,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: white,
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isTapped = !isTapped;
                                      });
                                    },
                                    child: isTapped
                                        ? const Icon(
                                            CupertinoIcons.bell,
                                            color: orange,
                                            size: 40,
                                          )
                                        : const Icon(
                                            CupertinoIcons.bell_fill,
                                            color: orange,
                                            size: 40,
                                          )),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Sing',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 24,
                                              color: black,
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'In',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 22,
                                              color: orange,
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      '/',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 24,
                                        color: orange,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Sign',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 24,
                                              color: black,
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Up?',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 22,
                                              color: orange,
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushReplacementNamed('/signin');
                                        },
                                        child: Container(
                                            height: 85.0,
                                            width: 110,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      orange.withOpacity(0.2),
                                                  spreadRadius: 4,
                                                  blurRadius: 5,
                                                  offset: const Offset(0, 7),
                                                ),
                                              ],
                                              color: white,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(
                                                  16.0,
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Sign',
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 24,
                                                    color: black,
                                                    fontWeight: FontWeight.w700,
                                                    fontStyle: FontStyle.normal,
                                                  ),
                                                ),
                                                Text(
                                                  'IN',
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 22,
                                                    color: orange,
                                                    fontWeight: FontWeight.w700,
                                                    fontStyle: FontStyle.normal,
                                                  ),
                                                ),
                                              ],
                                            ))),
                                      ),
                                      const SizedBox(
                                        width: 40,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushReplacementNamed('/signup');
                                        },
                                        child: Container(
                                            height: 85.0,
                                            width: 110,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      orange.withOpacity(0.2),
                                                  spreadRadius: 4,
                                                  blurRadius: 5,
                                                  offset: const Offset(0, 7),
                                                ),
                                              ],
                                              color: white,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(
                                                  16.0,
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Sign',
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 24,
                                                    color: black,
                                                    fontWeight: FontWeight.w700,
                                                    fontStyle: FontStyle.normal,
                                                  ),
                                                ),
                                                Text(
                                                  'Up',
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 22,
                                                    color: orange,
                                                    fontWeight: FontWeight.w700,
                                                    fontStyle: FontStyle.normal,
                                                  ),
                                                ),
                                              ],
                                            ))),
                                      ),
                                      const SizedBox(
                                        height: 22,
                                      ),
                                    ]),
                                const SizedBox(
                                  height: 22,
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Already have an account',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '? ',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: orange,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Or don\'t',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Have an account yet',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '? ',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: orange,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Choose One',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: orange,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16),
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text(
                                    'Okay i know',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: orange,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: white,
                    ),
                    child: Center(
                      child: Stack(
                        children: const [
                          Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.redAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: CircleAvatar(
                              backgroundColor: red,
                              radius: 4,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Where do you want to go?',
                style: GoogleFonts.montserrat(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 80,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: const Offset(0, 7),
                    ),
                  ],
                  color: white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, top: 12, right: 16, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 250,
                        height: 60,
                        child: Autocomplete<String>(
                          optionsBuilder: (TextEditingValue textEditingValue) {
                            if (textEditingValue.text == "") {
                              return const Iterable<String>.empty();
                            }
                            return listItems.where((String item) {
                              return item.contains(
                                  textEditingValue.text.toLowerCase());
                            });
                          },
                          onSelected: (String item) {
                            print('{$item}');
                          },
                        ),
                      ),
                      // Expanded(
                      //   child: TextField(
                      //     style: GoogleFonts.montserrat(
                      //       fontSize: 15,
                      //       color: greyfortext,
                      //       fontWeight: FontWeight.w600,
                      //     ),
                      //     cursorColor: black,
                      //     decoration: InputDecoration.collapsed(
                      //       hintText: 'Search For Places',
                      //       hintStyle: GoogleFonts.montserrat(
                      //         fontSize: 15,
                      //         color: greyfortext,
                      //         fontWeight: FontWeight.w600,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Center(
                        child: Icon(
                          CupertinoIcons.search,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Categories',
                style: GoogleFonts.montserrat(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/detail');
                      },
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        height: 100,
                        width: 250,
                        decoration: const BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: double.infinity,
                              width: 100,
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://picsum.photos/1000",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Text(
                                'Bali, Indonesia',
                                style: GoogleFonts.montserrat(
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/detail');
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        height: 100,
                        width: 220,
                        decoration: const BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: double.infinity,
                              width: 100,
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://picsum.photos/1000",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Text(
                                'Kerry, Irlandia',
                                style: GoogleFonts.montserrat(
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/detail');
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        height: 100,
                        width: 200,
                        decoration: const BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: double.infinity,
                              width: 88,
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://picsum.photos/1000",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Text(
                                'Roma, Italia',
                                style: GoogleFonts.montserrat(
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'More Trips',
                    style: GoogleFonts.montserrat(
                      color: black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400,
                              color: white,
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                padding: const EdgeInsets.all(10),
                                children: <Widget>[
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Wrap(
                                    children: [
                                      Chip(
                                        padding: const EdgeInsets.all(10),
                                        onDeleted: () {},
                                        avatar: CircleAvatar(
                                          backgroundColor: Colors.grey.shade800,
                                          child: Text('H',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                        label: Text(
                                          'Holiday',
                                          style: GoogleFonts.montserrat(
                                              color: black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Chip(
                                        padding: const EdgeInsets.all(10),
                                        onDeleted: () {},
                                        avatar: CircleAvatar(
                                          backgroundColor: Colors.grey.shade800,
                                          child: Text('H',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                        label: Text(
                                          'Hiking',
                                          style: GoogleFonts.montserrat(
                                              color: black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Chip(
                                        padding: const EdgeInsets.all(10),
                                        onDeleted: () {},
                                        avatar: CircleAvatar(
                                          backgroundColor: Colors.grey.shade800,
                                          child: Text('T',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                        label: Text(
                                          'Trip',
                                          style: GoogleFonts.montserrat(
                                              color: black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Chip(
                                        padding: const EdgeInsets.all(10),
                                        onDeleted: () {},
                                        avatar: CircleAvatar(
                                          backgroundColor: Colors.grey.shade800,
                                          child: Text('D',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                        label: Text(
                                          'Discount',
                                          style: GoogleFonts.montserrat(
                                              color: black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Chip(
                                        padding: const EdgeInsets.all(10),
                                        onDeleted: () {},
                                        avatar: CircleAvatar(
                                          backgroundColor: Colors.grey.shade800,
                                          child: Text('H',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                        label: Text(
                                          'Hot',
                                          style: GoogleFonts.montserrat(
                                              color: black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Chip(
                                        padding: const EdgeInsets.all(10),
                                        onDeleted: () {},
                                        avatar: CircleAvatar(
                                          backgroundColor: Colors.grey.shade800,
                                          child: Text('V',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                        label: Text(
                                          'Viral',
                                          style: GoogleFonts.montserrat(
                                              color: black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Chip(
                                        padding: const EdgeInsets.all(10),
                                        onDeleted: () {},
                                        avatar: CircleAvatar(
                                          backgroundColor: Colors.grey.shade800,
                                          child: Text('T',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                        label: Text(
                                          'Trend',
                                          style: GoogleFonts.montserrat(
                                              color: black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Chip(
                                        padding: const EdgeInsets.all(10),
                                        onDeleted: () {},
                                        avatar: CircleAvatar(
                                          backgroundColor: Colors.grey.shade800,
                                          child: Text('S',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                        label: Text(
                                          'Season',
                                          style: GoogleFonts.montserrat(
                                              color: black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  ExpansionTile(
                                      title: Text(
                                        'Top Country',
                                        style: GoogleFonts.montserrat(
                                            color: black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      children: [
                                        Card(
                                          child: ListTile(
                                            leading: CircleAvatar(
                                              radius: 30,
                                              backgroundColor: Colors.grey[200],
                                              backgroundImage:
                                                  const NetworkImage(
                                                "https://cdn0-production-images-kly.akamaized.net/BF8O6MHmTq9BiSl0or6gSkWxVrc=/1200x1200/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1456647/original/066615500_1483452718-Tips-Sehat-Sebelum-Berwisata-ke-Bangkok.jpg",
                                              ),
                                            ),
                                            title: Text(
                                              'Bangkok',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            subtitle: Text(
                                              'Start at Rp12.500.000',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                        Card(
                                          child: ListTile(
                                            leading: CircleAvatar(
                                              radius: 30,
                                              backgroundColor: Colors.grey[200],
                                              backgroundImage:
                                                  const NetworkImage(
                                                "https://asset.kompas.com/crops/_3M-MVTTHsAU9-FLRiyvdEVgZMw=/0x0:778x389/750x500/data/photo/2018/11/21/1268730124.jpg",
                                              ),
                                            ),
                                            title: Text(
                                              'HongKong',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            subtitle: Text(
                                              'Start at 15.000.000',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                        Card(
                                          child: ListTile(
                                            leading: CircleAvatar(
                                              radius: 30,
                                              backgroundColor: Colors.grey[200],
                                              backgroundImage:
                                                  const NetworkImage(
                                                "https://asset.kompas.com/crops/jkuTNZbp28ejEkMCjQi4_3F4Fbg=/0x9:725x493/750x500/data/photo/2020/03/29/5e8063f487c53.jpg",
                                              ),
                                            ),
                                            title: Text(
                                              'Thailand',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            subtitle: Text(
                                              'Start at 10.500.000',
                                              style: GoogleFonts.montserrat(
                                                  color: black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ]),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Card(
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.grey[200],
                                        backgroundImage: const NetworkImage(
                                          "https://mmc.tirto.id/image/2021/05/06/antarafoto-aktivitas-gunung-merapi-060521-afa-4_ratio-16x9.jpg",
                                        ),
                                      ),
                                      title: Text(
                                        'Merapi',
                                        style: GoogleFonts.montserrat(
                                            color: black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      subtitle: Text(
                                        'Start at 2.500.000',
                                        style: GoogleFonts.montserrat(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Card(
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.grey[200],
                                        backgroundImage: const NetworkImage(
                                          "https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/12/06/2041728745.jpg",
                                        ),
                                      ),
                                      title: Text(
                                        'Rinjani',
                                        style: GoogleFonts.montserrat(
                                            color: black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      subtitle: Text(
                                        'Start at 1.200.000',
                                        style: GoogleFonts.montserrat(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  Center(
                                    child: SizedBox(
                                      height: 58,
                                      width: 218,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16))),
                                        child: Text(
                                          'Close',
                                          style: GoogleFonts.montserrat(
                                              color: white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Price',
                        style: GoogleFonts.montserrat(
                          color: blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      height: 210,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 88,
                            width: double.maxFinite,
                            child: FutureBuilder<Album>(
                              future: futureAlbum,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://image.tmdb.org/t/p/w500${snapshot.data!.poster}",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                          16.0,
                                        ),
                                      ),
                                    ),
                                  );
                                } else if (snapshot.hasError) {
                                  return Text('${snapshot.error}');
                                }
                                return const CircularProgressIndicator
                                    .adaptive();
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Flexible(
                            child: FutureBuilder<Album>(
                              future: futureAlbum,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Text(
                                    snapshot.data!.title,
                                    style: GoogleFonts.montserrat(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  );
                                } else if (snapshot.hasError) {
                                  return Text(
                                    '${snapshot.error}',
                                    style: GoogleFonts.montserrat(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  );
                                }
                                return const CircularProgressIndicator
                                    .adaptive();
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          FutureBuilder<Album>(
                            future: futureAlbum,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                  snapshot.data!.overview,
                                  overflow: TextOverflow.fade,
                                  maxLines: 3,
                                  style: GoogleFonts.montserrat(
                                      color: greyfortext,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                );
                              } else if (snapshot.hasError) {
                                return Text(
                                  '${snapshot.error}',
                                  overflow: TextOverflow.fade,
                                  maxLines: 3,
                                  style: GoogleFonts.montserrat(
                                      color: greyfortext,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                );
                              }
                              return const CircularProgressIndicator.adaptive();
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      height: 210,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 88,
                            width: double.maxFinite,
                            child: FutureBuilder<Alone>(
                              future: futureAlone,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://image.tmdb.org/t/p/w500${snapshot.data!.poster}",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                          16.0,
                                        ),
                                      ),
                                    ),
                                  );
                                } else if (snapshot.hasError) {
                                  return Text('${snapshot.error}');
                                }
                                return const CircularProgressIndicator
                                    .adaptive();
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Flexible(
                            child: FutureBuilder<Alone>(
                              future: futureAlone,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Text(
                                    snapshot.data!.title,
                                    style: GoogleFonts.montserrat(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  );
                                } else if (snapshot.hasError) {
                                  return Text(
                                    '${snapshot.error}',
                                    style: GoogleFonts.montserrat(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  );
                                }
                                return const CircularProgressIndicator
                                    .adaptive();
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          FutureBuilder<Alone>(
                            future: futureAlone,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                  snapshot.data!.overview,
                                  overflow: TextOverflow.fade,
                                  maxLines: 3,
                                  style: GoogleFonts.montserrat(
                                      color: greyfortext,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                );
                              } else if (snapshot.hasError) {
                                return Text(
                                  '${snapshot.error}',
                                  overflow: TextOverflow.fade,
                                  maxLines: 3,
                                  style: GoogleFonts.montserrat(
                                      color: greyfortext,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                );
                              }
                              return const CircularProgressIndicator.adaptive();
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      height: 210,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 88,
                            width: double.maxFinite,
                            child: FutureBuilder<Altwo>(
                              future: futureAltwo,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://image.tmdb.org/t/p/w500${snapshot.data!.poster}",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                          16.0,
                                        ),
                                      ),
                                    ),
                                  );
                                } else if (snapshot.hasError) {
                                  return Text('${snapshot.error}');
                                }
                                return const CircularProgressIndicator
                                    .adaptive();
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Flexible(
                            child: FutureBuilder<Altwo>(
                              future: futureAltwo,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Text(
                                    snapshot.data!.title,
                                    style: GoogleFonts.montserrat(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  );
                                } else if (snapshot.hasError) {
                                  return Text(
                                    '${snapshot.error}',
                                    style: GoogleFonts.montserrat(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  );
                                }
                                return const CircularProgressIndicator
                                    .adaptive();
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          FutureBuilder<Altwo>(
                            future: futureAltwo,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                  snapshot.data!.overview,
                                  overflow: TextOverflow.fade,
                                  maxLines: 3,
                                  style: GoogleFonts.montserrat(
                                      color: greyfortext,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                );
                              } else if (snapshot.hasError) {
                                return Text(
                                  '${snapshot.error}',
                                  overflow: TextOverflow.fade,
                                  maxLines: 3,
                                  style: GoogleFonts.montserrat(
                                      color: greyfortext,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                );
                              }
                              return const CircularProgressIndicator.adaptive();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
