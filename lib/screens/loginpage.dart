// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last

import 'package:app1/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      Spacer(),
                      Image.asset(
                        'assets/images/logo.png',
                      ),
                      Text(
                        "Eclipse",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.bangers(fontSize: 40),
                      ),
                      Spacer()
                    ],
                  ),
                ),
                Text(
                  "INVEST MONEY SMARTLY",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 80),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text("Your Email Address",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, bottom: 15.0, top: 8.0),
                  child: TextField(
                    controller: usernameController,
                    obscureText: false,
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey[500])),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text("Your Password",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, bottom: 15.0, top: 8.0),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey[500])),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "CONTINUE",
                        style: GoogleFonts.lato(fontSize: 18),
                      ),
                    ),
                    height: 50,
                    width: (MediaQuery.of(context).size.width) * 0.75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color.fromRGBO(174, 233, 145, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "OR",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                    ),
                    child: Container(
                      child: Center(
                        child: Text(
                          "CONTINUE WITH GOOGLE",
                          style: GoogleFonts.lato(fontSize: 10),
                        ),
                      ),
                      height: 50,
                      width: (MediaQuery.of(context).size.width) * 0.75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Colors.grey[200]),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 40),
                    child: Container(
                      child: Center(
                        child: Text(
                          "CONTINUE WITH APPLE",
                          style: GoogleFonts.lato(fontSize: 10),
                        ),
                      ),
                      height: 50,
                      width: (MediaQuery.of(context).size.width) * 0.75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Colors.grey[200]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
