import 'dart:js';
import 'package:first_app_flutter/Components/appBar.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:popup_card/popup_card.dart';
import '../../Components/appBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Roboto'),
        home: Scaffold(
          appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Image.asset('assets/images/Logo padeprokan.png'),
                  new Text(
                    "Spaces",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 127, 126, 126),
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                  ),

                  //Profile Picture button and Notification button
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(right: 17),
                          child: IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: Color.fromARGB(255, 138, 138, 138),
                            ),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => Padding(
                                        padding: const EdgeInsets.only(
                                            right: 54, top: 30),
                                        child: AlertDialog(
                                          alignment: Alignment.topRight,
                                          content: Container(
                                            width: 227,
                                            height: 256,
                                            child: Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                      'assets/images/Vector.png'),
                                                  Text(
                                                    "No Data",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Color.fromARGB(
                                                            255,
                                                            138,
                                                            138,
                                                            138)),
                                                  ),

                                                  // Divider(
                                                  //   color: Color.fromARGB(255, 138, 138, 138),
                                                  //   thickness: 1,
                                                  // )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ));
                            },
                          )),

                      //Account Button
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          12, 23, 24, 34),
                                      child: AlertDialog(
                                        alignment: Alignment.topRight,
                                        content: Container(
                                          height: 103,
                                          width: 200,
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.circle_rounded,
                                                    color: Color.fromARGB(
                                                        255, 138, 138, 138),
                                                    size: 39,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 13),
                                                    child: Text(
                                                      "My Account",
                                                      style: TextStyle(
                                                          fontSize: 14),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                color: Color.fromARGB(
                                                    255, 138, 138, 138),
                                                thickness: 1,
                                              ),
                                              Row(
                                                children: [
                                                  Text("Change Password",
                                                      style: TextStyle(
                                                          fontSize: 14)),
                                                ],
                                              ),
                                              Divider(
                                                color: Color.fromARGB(
                                                    255, 138, 138, 138),
                                                thickness: 1,
                                              ),
                                              Row(
                                                children: [
                                                  Text("Logout",
                                                      style: TextStyle(
                                                          fontSize: 14))
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ));
                          },
                          icon: Icon(
                            Icons.circle_rounded,
                            color: Color.fromARGB(255, 138, 138, 138),
                          ))
                    ],
                  ),
                ],
              ),
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
                          children: [
                            Image.asset(
                              'assets/images/logo copy.png',
                              width: 220,
                              height: 160,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 79),
                              child: Text(
                                "You Have No Space Here!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 73, 73, 73),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
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
                          padding: const EdgeInsets.only(top: 208, bottom: 303),
                          child: AlertDialog(
                            content: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              width: 380,
                              height: 191,
                              child: Column(
                                children: [
                                  Row(children: [
                                    Text(
                                      "Create New Space",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 53, 53, 53),
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]),
                                  Divider(
                                    color: Color.fromARGB(255, 138, 138, 138),
                                    thickness: 1,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 30),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "Space name",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        255, 153, 153, 153)),
                                                children: [
                                                  TextSpan(
                                                      text: '*',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.red))
                                                ]),
                                          )
                                          // Text(
                                          //   "Space name",
                                          //   textAlign: TextAlign.start,
                                          //   style: TextStyle(
                                          //       fontSize: 12,
                                          //       color: Color.fromARGB(
                                          //           255, 153, 153, 153)),
                                          // ),
                                          ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 13),
                                    child: Container(
                                      height: 29,
                                      child: TextField(
                                          textAlign: TextAlign.start,
                                          style: TextStyle(fontSize: 11),
                                          decoration: InputDecoration(
                                              hintText: "Your space name",
                                              hintStyle:
                                                  TextStyle(fontSize: 11),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Color.fromARGB(
                                                          255, 140, 79, 225))),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color.fromARGB(255,
                                                          140, 79, 225))))),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 26),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Divider(
                                            color: Color.fromARGB(
                                                255, 138, 138, 138),
                                            thickness: 1,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                  width: 71,
                                                  height: 28,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    child: Column(children: [
                                                      Text(
                                                        "Cancel",
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    131,
                                                                    131,
                                                                    131)),
                                                      )
                                                    ]),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color.fromARGB(
                                                              255,
                                                              143,
                                                              143,
                                                              143)),
                                                      color: Color.fromARGB(
                                                          255, 245, 245, 245),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                  width: 71,
                                                  height: 28,
                                                  decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 117, 17, 255),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "Submit",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              color:
                                                                  Colors.white),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ));
              },
              tooltip: 'Create New Space',
              child: const Icon(
                Icons.add_rounded,
                size: 40,
              ),
              backgroundColor: Color.fromARGB(255, 255, 162, 2),
            ),
          ),
        ));
  }
}
