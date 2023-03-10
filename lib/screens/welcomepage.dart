// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'homepage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(204, 229, 229, 1),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Lottie.asset("assets/images/Welcome.json"),
              ),
            ),
            Text(
              "Eclipse",
              textAlign: TextAlign.center,
              style: GoogleFonts.bangers(fontSize: 60),
            ),
            Text(
              "Building a head start to your finances",
              style: GoogleFonts.ubuntu(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Lets do this",
                      style: GoogleFonts.ubuntu(fontSize: 20),
                    ),
                  ),
                  height: 50,
                  width: (MediaQuery.of(context).size.width) * 0.75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.green.shade200),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// 17 27 49
//color: Color.fromRGBO(17, 27, 49, 1),

// 167 252 132
// https://assets10.lottiefiles.com/packages/lf20_06a6pf9i.json
// 233 251 242