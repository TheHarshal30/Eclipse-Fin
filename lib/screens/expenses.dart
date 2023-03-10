// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:app1/bar%20graphs/expenseSummary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({super.key});

  @override
  State<ExpensePage> createState() => ExpensePageState();
}

class ExpensePageState extends State<ExpensePage> {
  var selected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: selected == 1
                                  ? Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 2))
                                  : Border(
                                      bottom: BorderSide(color: Colors.white))),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Expenses",
                                style: GoogleFonts.ubuntu(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 2;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: selected == 2
                                  ? Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 2))
                                  : Border(
                                      bottom: BorderSide(color: Colors.white))),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Income",
                                style: GoogleFonts.ubuntu(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        (selected == 1)
                            ? Text(
                                "Total Expense:",
                                style: GoogleFonts.ubuntu(fontSize: 15),
                              )
                            : Text(
                                "Total Income:",
                                style: GoogleFonts.ubuntu(fontSize: 15),
                              ),
                        Text(
                          "5000.00",
                          style: GoogleFonts.ubuntu(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 30, right: 18),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.8,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue.shade50,
                      borderRadius: BorderRadius.circular(15)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                        width: 800,
                        child: ExpenseSummary(
                          barColor: Color.fromRGBO(37, 47, 72, 1),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey.shade100),
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: (selected == 1)
                                    ? Text("Expense List",
                                        style: GoogleFonts.ubuntu(
                                            fontWeight: FontWeight.bold))
                                    : Text("Stipend List",
                                        style: GoogleFonts.ubuntu(
                                            fontWeight: FontWeight.bold)),
                              ),
                              Image(
                                  image: AssetImage("assets/images/g.png"),
                                  height:
                                      MediaQuery.of(context).size.height / 20)
                            ]),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey.shade100),
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: (selected == 1)
                                    ? Text("Add Expense",
                                        style: GoogleFonts.ubuntu(
                                            fontWeight: FontWeight.bold))
                                    : Text("Add Stipend",
                                        style: GoogleFonts.ubuntu(
                                            fontWeight: FontWeight.bold)),
                              ),
                              Image(
                                  image: AssetImage("assets/images/g.png"),
                                  height:
                                      MediaQuery.of(context).size.height / 20)
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 0,
                  child: Container(
                    decoration: BoxDecoration(),
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Total Savings: ",
                              style: GoogleFonts.ubuntu(
                                  color: Colors.grey.shade700, fontSize: 16)),
                          Text(
                            " 20,000",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.lightGreen),
                          )
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Recent Transactions:",
                        style: GoogleFonts.ubuntu(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              elevation: 1,
                              child: Container(
                                height: MediaQuery.of(context).size.height / 10,
                                width: MediaQuery.of(context).size.width / 1.10,
                                decoration: BoxDecoration(
                                  /*border: Border.all(width: 1.5, color: Colors.black),*/
                                  color: Colors.transparent,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: Colors.orange.shade50,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              //  border: Border.all(color: Colors.black, width: 1)
                                            ),
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/images/learn2.png"),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    20),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Merchant",
                                            style: GoogleFonts.ubuntu(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "-100",
                                        style: GoogleFonts.lato(
                                            fontSize: 20,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              )
              /*
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width / 3,
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width / 3,
                      ),
                    )
                  ],
                ),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
