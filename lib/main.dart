// ignore_for_file: prefer_const_constructors
import 'package:app1/on%20boarding/page1.dart';
import 'package:app1/screens/expenses.dart';
import 'package:app1/screens/homepage.dart';
import 'package:app1/screens/investmf.dart';
import 'package:app1/screens/welcomepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Eclipse",
      home: WelcomePage(),
    );
  }
}
