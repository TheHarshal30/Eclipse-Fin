// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_interpolation_to_compose_strings, sort_child_properties_last, avoid_unnecessary_containers

import 'package:app1/models/fdmodel.dart';
import 'package:app1/models/mfmodel.dart';
import 'package:app1/models/mfmodel2.dart';
import 'package:app1/models/mfmodel3.dart';
import 'package:app1/models/remote_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InvestMFPage extends StatefulWidget {
  const InvestMFPage({super.key});

  @override
  State<InvestMFPage> createState() => _InvestMFPageState();
}

class _InvestMFPageState extends State<InvestMFPage> {
  FDs? fdlist;
  List<Welcome>? mflist;
  List<Welcome>? mflist2;
  List<MFNAV>? mfnavlist;
  Welcome2? mflist3;
  var isLoaded = false;
  var isLoaded2 = false;
  var isLoaded1 = false;
  var selec = 0;

  @override
  void initState() {
    super.initState();
    getData();
    getData2();
    getData3();
  }

  getData() async {
    mflist = (await RemoteService.getPosts());

    if (mflist != null) {
      mflist2 = mflist?.reversed.toList();
      setState(() {
        isLoaded = true;
      });
    }
  }

  getData2() async {
    fdlist = (await RemoteService2.getPosts());

    if (fdlist != null) {
      //print("Hello");
      setState(() {
        isLoaded1 = true;
      });
    }
  }

  getData3() async {
    mfnavlist = (await RemoteService4.getPosts());
    print("Hello null");
    if (mfnavlist != null) {
      setState(() {
        isLoaded2 = true;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Welcome to Eclipse Investing",
            style: GoogleFonts.ubuntu(fontSize: 18, color: Colors.black)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20, top: 10, bottom: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selec = 0;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(
                                        border: (selec == 0)
                                            ? Border(
                                                bottom: BorderSide(
                                                    width: 0.5,
                                                    color: Colors.blue))
                                            : Border(
                                                bottom: BorderSide(
                                                    width: 0.5,
                                                    color: Colors.white))),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Fixed Deposits",
                                          style: GoogleFonts.ubuntu(
                                              fontSize: 16,
                                              color: (selec == 0)
                                                  ? Colors.blue
                                                  : Colors.black),
                                        ),
                                        Text(
                                          "Risk Free Investments",
                                          style: GoogleFonts.ubuntu(
                                              color: Colors.grey.shade600,
                                              fontSize: 8),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selec = 1;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                      border: (selec == 1)
                                          ? Border(
                                              bottom: BorderSide(
                                                  width: 0.5,
                                                  color: Colors.blue))
                                          : Border(
                                              bottom: BorderSide(
                                                  width: 0.5,
                                                  color: Colors.white))),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Mutual Funds",
                                        style: GoogleFonts.ubuntu(
                                            fontSize: 16,
                                            color: (selec == 1)
                                                ? Colors.blue
                                                : Colors.black),
                                      ),
                                      Text(
                                        "Low Risk High Returns",
                                        style: GoogleFonts.ubuntu(
                                            color: Colors.grey.shade600,
                                            fontSize: 8),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                if (selec == 0) ...[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10, bottom: 20),
                    child: Card(
                      elevation: 0.5,
                      child: Container(
                          height: MediaQuery.of(context).size.height / 1.35,
                          child: Visibility(
                            visible: isLoaded1,
                            child: SingleChildScrollView(
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: fdlist?.data.length,
                                  itemBuilder: ((context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 0.5,
                                                color: Colors.grey)),
                                        child: ListTile(
                                          title: Text(fdlist!
                                              .data[index].attributes.name),
                                          subtitle: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "Interest Rate: ",
                                                    style: GoogleFonts.ubuntu(
                                                        color: Colors
                                                            .grey.shade600),
                                                  ),
                                                  Text(
                                                    fdlist!
                                                            .data[index]
                                                            .attributes
                                                            .interestRate
                                                            .toString() +
                                                        "%",
                                                    style: GoogleFonts.ubuntu(
                                                        color: Colors.green),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 18.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Min tenure: ",
                                                        style:
                                                            GoogleFonts.ubuntu(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600),
                                                      ),
                                                      Text(
                                                        fdlist!
                                                            .data[index]
                                                            .attributes
                                                            .tenureFromInMonths
                                                            .toString(),
                                                        style:
                                                            GoogleFonts.ubuntu(
                                                                color: Colors
                                                                    .green),
                                                      )
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  })),
                            ),
                            replacement: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          )),
                    ),
                  )
                ] else if (selec == 1) ...[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, bottom: 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height/2,
                            child: Column(
                              children: [],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Card(
                            elevation: 0.5,
                            child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 1.35,
                                child: Visibility(
                                  visible: isLoaded2,
                                  child: SingleChildScrollView(
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        scrollDirection: Axis.vertical,
                                        itemCount: 20,
                                        itemBuilder: ((context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: Colors.grey)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: ListTile(
                                                  title: Text(
                                                      mfnavlist![index]
                                                          .schemeName,
                                                      style: GoogleFonts.ubuntu(
                                                          fontSize: 14)),
                                                  subtitle: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 8.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text("NAV: ",
                                                                style: GoogleFonts.ubuntu(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade600,
                                                                    fontSize:
                                                                        12)),
                                                            Text(
                                                                mfnavlist![
                                                                        index]
                                                                    .netAssetValue,
                                                                style: GoogleFonts.ubuntu(
                                                                    color: Colors
                                                                        .green,
                                                                    fontSize:
                                                                        12))
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "Scheme Code: ",
                                                                style: GoogleFonts.ubuntu(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade600,
                                                                    fontSize:
                                                                        12)),
                                                            Text(
                                                                mfnavlist![
                                                                        index]
                                                                    .schemeCode,
                                                                style: GoogleFonts.ubuntu(
                                                                    color: Colors
                                                                        .green,
                                                                    fontSize:
                                                                        12))
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        })),
                                  ),
                                  replacement: const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                )),
                          ),
                        )
                      ],
                    )),
                  ),
                ],
              ],
            )),
          ],
        ),
      ),
    );
  }
}
