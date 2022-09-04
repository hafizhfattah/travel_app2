import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbg,
      body: SafeArea(
        child: Center(
          child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              scrollDirection: Axis.vertical,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://picsum.photos/1000",
                        ),
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.of(context)
                              .pushReplacementNamed('/opening'),
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
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Spacer(),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 50,
                                  width: 50,
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
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Jatibarang\nResolvoir',
                              style: GoogleFonts.montserrat(
                                  letterSpacing: 1,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: white),
                            ),
                            const Spacer(),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 50,
                                  width: 50,
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
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '\$130/',
                                    style: GoogleFonts.montserrat(
                                        letterSpacing: 1,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: white),
                                  ),
                                  TextSpan(
                                    text: 'Person',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w600,
                                        color: white),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 50,
                                  width: 50,
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Overview',
                      style: GoogleFonts.montserrat(
                          color: orange,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      'Reviews',
                      style: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: const Icon(
                        CupertinoIcons.time,
                        color: orange,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: const Icon(
                        CupertinoIcons.heart,
                        color: orange,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: const Icon(
                        CupertinoIcons.map_pin_slash,
                        color: orange,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Di desa Bulak terdapat wisata Banjar Indah, tepatnya di pinggir jalan raya Jatibarang - Karangampel. Di tempat ini terdapat kelompok kera yang sangat dikeramatkan. Bahkan jumlah monyet ini tidak pernah kurang atau lebih dari 41 ekor. Tempat ini dijadikan sebagai tempat wisata yang selalu ramai dikunjungi orang saat Hari Raya Idul Fitri ataupun Idul Adha',
                  overflow: TextOverflow.fade,
                  maxLines: 5,
                  style: GoogleFonts.montserrat(
                      color: greyfortext,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: SizedBox(
                    height: 58,
                    width: 315,
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: const Duration(seconds: 2),
                          backgroundColor: black,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          behavior: SnackBarBehavior.floating,
                          action:
                              SnackBarAction(label: 'Undo', onPressed: () {}),
                          elevation: 0,
                          content: Text(
                            'Order Send',
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
                              borderRadius: BorderRadius.circular(16))),
                      child: Text(
                        'Order',
                        style: GoogleFonts.montserrat(
                            color: white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
