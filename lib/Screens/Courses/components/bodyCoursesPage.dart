import 'dart:html';

import 'package:first_app_flutter/Components/appBarBack.dart';

import 'package:first_app_flutter/Screens/Courses/components/speedDial.dart';
import 'package:first_app_flutter/Screens/Docs%20&%20Files/components/speedDial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import '../../../Utils/constants.dart';

class bodyCoursesPage extends StatefulWidget {
  const bodyCoursesPage({Key? key}) : super(key: key);

  @override
  State<bodyCoursesPage> createState() => _bodyCoursesPage();
}

class _bodyCoursesPage extends State<bodyCoursesPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidht = MediaQuery.of(context).size.width;
    return Scaffold(
      
      body: Container(
        color: kBackGround,
        width: mediaQueryWidht * 1,
        height: mediaQueryHeight * 1,
        child: Stack(alignment: Alignment.topCenter, children: <Widget>[
          Positioned(
              top: 50,
              right: 19,
              left: 19,
              child: Form(
                  child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Color.fromRGBO(140, 79, 225, 1))),
                  hintText: "Search files or folder",
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(199, 196, 196, 1),
                    ),
                    onPressed: () {},
                  ),
                  hintStyle: text2,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ))),
          Positioned(
              top: 122,
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/LogoCP.png',
                      height: 157,
                      width: 220,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        kDontHaveSpace,
                        style: dontHave,
                      ),
                    )
                  ],
                ),
              )),
          // Positioned(
          //   bottom: 59,
          //   right: 34,
          //   child: Icon(
          //     Icons.add_circle,
          //     color: kColorAdd,
          //     size: 55,
          //   ),
          // ),
        ]),
      ),
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
                          height: 250,
                          child: ListView(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Add Course",
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
                                              text: "Title",
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
                                        hintText: "Insert course title",
                                        hintStyle: TextStyle(fontSize: 11),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 140, 79, 225)))),
                                    style: TextStyle(fontSize: 11),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: RichText(
                                          text: TextSpan(
                                              text: "Categories",
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
                                        hintText: "Please select categories",
                                        hintStyle: TextStyle(fontSize: 11),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 140, 79, 225)))),
                                    style: TextStyle(fontSize: 11),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: RichText(
                                          text: TextSpan(
                                              text: "Estimate finish time",
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
                                  child: CupertinoTimerPicker(
                                    backgroundColor: Colors.white,
                                    onTimerDurationChanged: (value) {
                                      print(value.toString());
                                    },
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: RichText(
                                          text: TextSpan(
                                              text: "Description",
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
                              Container(
                                  width: 346,
                                  height: 29,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Insert course description",
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
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 12),
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
                                                          255, 131, 131, 131),
                                                      fontSize: 13),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 143, 143, 143)),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          ;
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
    );
  }
}
