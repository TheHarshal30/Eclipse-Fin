// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app1/on%20boarding/page2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.lightGreen.shade50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Eclipse \nInvesting",
                    style: GoogleFonts.ubuntu(
                        fontSize: 55, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, left: 5),
                    child: Text(
                      "Eclipse Investing gives a list of best low risk & high return investment opportunities",
                      style: GoogleFonts.ubuntu(
                          color: Colors.grey.shade600, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              GestureDetector(
                onTap: (() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page2()));
                }),
                child: Image(
                  image: AssetImage("assets/images/g.png"),
                  height: MediaQuery.of(context).size.height / 15,
                ),
              ),
            ]),
            Image(
              image: AssetImage(
                "assets/images/otherincome.png",
              ),
              height: MediaQuery.of(context).size.height / 3,
            )
          ],
        ),
      ),
    );
  }
}
