import 'dart:js';
import 'package:first_app_flutter/Components/Homepage/cardHome.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import '../../Components/Homepage/cardHome.dart';

import '../../Components/appBar.dart';

class HomePageSpace extends StatefulWidget {
  const HomePageSpace({Key? key}) : super(key: key);

  @override
  State<HomePageSpace> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageSpace> {
  List<spaceCard> listDynamic = [];
  addDynamic() {
    listDynamic.add(new spaceCard(
        textColor: Colors.black,
        backgroundColor: Colors.white,
        text: "PKL Class",
        spaceColor: Colors.green));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Roboto'),
        home: Scaffold(
          //AppBar Padeprokan
          appBar: AppBar(
              title: appBarClass(),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              centerTitle: true),
          //MainBody
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 31, 0, 248),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 34)),
                          Text(
                            "Spaces",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 36,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      //Search Engine
                      new Column(
                        children: <Widget>[
                          new Container(
                            padding:
                                EdgeInsets.only(left: 19, top: 20, right: 34),
                            child: new Column(
                              children: <Widget>[
                                new TextField(
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.search)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      hintText: 'Search Spaces',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      fillColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 140, 79, 225)),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //No Space Interface
                      Container(
                        padding: EdgeInsets.only(top: 73),
                        child: Column(
                          children: <Widget>[
                            new Flexible(
                                child: ListView.builder(
                                    itemCount: listDynamic.length,
                                    itemBuilder: (_, index) =>
                                        listDynamic[index])),
                            Container(
                              padding: EdgeInsets.only(top: 79),
                            )
                          ],
                        ),
                      ),
                    ]),
                //Screen size
                decoration: new BoxDecoration(
                    color: Color.fromARGB(255, 219, 223, 247)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ],
          ),
          //Add Space Button
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 78),
            child: FloatingActionButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => Padding(
                          padding: const EdgeInsets.only(top: 208),
                          child: AlertDialog(
                            alignment: Alignment.topCenter,
                            content: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              width: 380,
                              height: 175,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Create new space",
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  ),
                                  Divider(
                                    color: Color.fromARGB(255, 188, 188, 188),
                                    thickness: 1,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 12),
                                          child: RichText(
                                              text: TextSpan(
                                                  text: "Space name",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 153, 153, 153),
                                                      fontSize: 12),
                                                  children: [
                                                TextSpan(
                                                    text: "*",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 255, 19, 19)))
                                              ])),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      width: 346,
                                      height: 29,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Your space name",
                                            hintStyle: TextStyle(fontSize: 11),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 140, 79, 225)))),
                                        style: TextStyle(fontSize: 11),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 27),
                                    child: Divider(
                                      color: Color.fromARGB(255, 188, 188, 188),
                                      thickness: 1,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 12),
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                width: 71,
                                                height: 27,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Cancel",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              131,
                                                              131,
                                                              131),
                                                          fontSize: 13),
                                                    ),
                                                  ],
                                                ),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        color: Color.fromARGB(
                                                            255,
                                                            143,
                                                            143,
                                                            143)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              addDynamic();
                                            },
                                            child: Container(
                                              width: 71,
                                              height: 27,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Submit",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 13),
                                                  )
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 177, 17, 255),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ));
              },
              tooltip: 'Create New Space',
              child: const Icon(Icons.add_rounded),
              backgroundColor: Color.fromARGB(255, 255, 162, 2),
            ),
          ),
        ));
  }
}