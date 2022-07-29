import 'dart:html';
import 'dart:ui';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../docs&Files.dart';
import 'bodyDocsFiles.dart';

class speedDial extends StatefulWidget {
  const speedDial({Key? key}) : super(key: key);

  @override
  State<speedDial> createState() => _speedDial();
}

class _speedDial extends State<speedDial> {
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
        icon: Icons.add,
        backgroundColor: kColorAdd,
        overlayColor: kBackGround,
        overlayOpacity: 0.2,
        spacing: 5,
        spaceBetweenChildren: 5,
        children: [
          SpeedDialChild(
              child: Image.asset(
                "assets/images/addFile.png",
                color: kWhite,
                height: 26,
                width: 26,
              ),
              backgroundColor: kColorAdd,
              label: "New File TXT",
              labelBackgroundColor: kblack,
              labelStyle: add),
          SpeedDialChild(
              child: Image.asset(
                "assets/images/addFolder.png",
                color: kWhite,
                height: 26,
                width: 26,
              ),
              backgroundColor: kColorAdd,
              label: "Add Folder",
              labelBackgroundColor: kblack,
              labelStyle: add),
          SpeedDialChild(
              child: Image.asset(
                "assets/images/clouddd.png",
                color: kWhite,
                height: 26,
                width: 26,
              ),
              backgroundColor: kColorAdd,
              label: "Upload File",
              labelBackgroundColor: kblack,
              labelStyle: add,
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Material(
                        color: Color.fromARGB(0, 0, 0, 0),
                        child: Container(
                          width: 386,
                          height: 284,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 17, top: 21),
                                  child: Text(
                                    "Uplode Files",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        color: kblack),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 21, right: 21),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  docsFiles()));
                                    },
                                    icon: Icon(Icons.close),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 16,
                              color: kdivider,
                              thickness: 1,
                            ),
                          ]),
                        ),
                      );
                    });
              }),
          SpeedDialChild(
              child: Image.asset(
                "assets/images/drive.png",
                color: kWhite,
                height: 26,
                width: 29.69,
              ),
              backgroundColor: kColorAdd,
              label: "Google Drive",
              labelBackgroundColor: kblack,
              labelStyle: add,
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      TextEditingController _untitled = TextEditingController();
                      return Material(
                        color: Color.fromARGB(0, 0, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 183, left: 16, right: 16, bottom: 375),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 17, top: 21),
                                      child: Text(
                                        "Embed Link From google drive",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            color: kblack),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 21, right: 21),
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          docsFiles()));
                                        },
                                        icon: Icon(Icons.close),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 16,
                                  color: kdivider,
                                  thickness: 1,
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 17),
                                      child: Text(
                                        "File name",
                                        style: embedLink,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3.5),
                                      child: Text(
                                        "*",
                                        style: embedLink2,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, right: 22),
                                  child: Form(
                                    child: SizedBox(
                                      height: 29,
                                      child: TextFormField(
                                        controller: _untitled,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      140, 79, 225, 1))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 2,
                                                  color: Color.fromRGBO(
                                                      140, 79, 225, 1))),
                                          hintText: "Untitled",
                                          hintStyle: searchFiles,
                                          filled: true,
                                          fillColor: Colors.white,
                                        ),
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 17),
                                      child: Text(
                                        "Embed link",
                                        style: embedLink,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3.5),
                                      child: Text(
                                        "*",
                                        style: embedLink2,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, right: 22),
                                  child: Form(
                                    child: SizedBox(
                                      height: 29,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      140, 79, 225, 1))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 2,
                                                  color: Color.fromRGBO(
                                                      140, 79, 225, 1))),
                                          hintText:
                                              "e.g.https://drive.google.com/open?id=1cMc-qT_W......",
                                          hintStyle: searchFiles,
                                          filled: true,
                                          fillColor: Colors.white,
                                        ),
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 25,
                                  color: kdivider,
                                  thickness: 1,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 12),
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
                                        print(_untitled.text);
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 21),
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
                                    ),
                                  ],
                                )
                              ])),
                        ),
                      );
                    });
              }),
        ]);
  }
}
