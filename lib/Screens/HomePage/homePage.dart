import 'dart:js';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

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
          //AppBar Padeprokan
          appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Image.asset('assets/images/Logo padeprokan.png'),
                  new Text(
                    "Spaces",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
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
                                                          255, 138, 138, 138)),
                                                ),
                                              ],
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
                                          height: 100,
                                          width: 200,
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.circle_rounded,
                                                    color: Color.fromARGB(
                                                        255, 138, 138, 138),
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
              // actions: [
              //   Row(
              //     children: [
              //       PopupMenuButton(
              //           icon: Icon(
              //             Icons.circle_rounded,
              //             color: Color.fromARGB(255, 138, 138, 138),
              //           ),
              //           itemBuilder: (context) => [
              //                 PopupMenuItem(
              //                   child: Text("First"),
              //                   value: 1,
              //                 )
              //               ]),
              //     ],
              //   ),
              // ],
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
                              'assets/images/Logo copy.png',
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
              onPressed: () {},
              tooltip: 'Create New Space',
              child: const Icon(Icons.add),
              backgroundColor: Color.fromARGB(255, 255, 162, 2),
            ),
          ),
        ));
  }
}
