import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class speedDial extends StatelessWidget {
  const speedDial({
    Key? key,
  }) : super(key: key);

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
              labelStyle: add),
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
                                        "Embed Link From google drive",
                                        style: TextStyle(
                                            fontSize: 16, fontFamily: 'Roboto'),
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
                                                  text: "File name",
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
                                            hintStyle: TextStyle(fontSize: 12),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 140, 79, 225)))),
                                        style: TextStyle(fontSize: 12),
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
                                            onTap: () {},
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
              }),
        ]);
  }
}
