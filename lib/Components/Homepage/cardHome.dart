<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class spaceCard extends StatefulWidget {
  const spaceCard({Key? key}) : super(key: key);
=======
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../Screens/HomePage/homePage.dart';
import '../../Utils/constants.dart';

String renameSpace = '';

enum MenuItem { item1, item2 }

class spaceCard extends StatefulWidget {
  final Color textColor;
  final Color spaceColor;
  final Color backgroundColor;
  final String text;

  spaceCard(
      {Key? key,
      required this.textColor,
      required this.backgroundColor,
      required this.text,
      required this.spaceColor})
      : super(key: key);
>>>>>>> 2af5a4f7831fa15a950120ca5e610dd8c97eb2fb

  @override
  State<spaceCard> createState() => _spaceCardState();
}

class _spaceCardState extends State<spaceCard> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
        home: Container(
      width: 380,
      height: 188,
      child: Row(children: [Text("Create new Space")]),
    ));
=======
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Container(
          width: 346,
          height: 160,
          decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 108,
                decoration: BoxDecoration(color: widget.spaceColor),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        PopupMenuButton(
                            onSelected: (value) {
                              if (value == MenuItem.item1) {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                        content: Container(
                                            width: 380,
                                            height: 188,
                                            child: Column(children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 16),
                                                    child: Text(
                                                      "Rename Space",
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      icon: Icon(Icons.close))
                                                ],
                                              ),
                                              Divider(
                                                thickness: 1,
                                                color: Color.fromARGB(
                                                    255, 188, 188, 188),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 0),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 19),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              text:
                                                                  "Space name",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          153,
                                                                          153,
                                                                          153),
                                                                  fontSize: 12),
                                                              children: [
                                                            TextSpan(
                                                                text: "*",
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            19,
                                                                            19)))
                                                          ])),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 346,
                                                height: 29,
                                                child: TextFormField(
                                                  textAlignVertical:
                                                      TextAlignVertical.bottom,
                                                  decoration: InputDecoration(
                                                    hintText: "Your Space name",
                                                    hintStyle:
                                                        TextStyle(fontSize: 11),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        140,
                                                                        79,
                                                                        225))),
                                                  ),
                                                  style:
                                                      TextStyle(fontSize: 11),
                                                  onChanged: (String text) {
                                                    setState(() {});
                                                    renameSpace = text;
                                                  },
                                                  onFieldSubmitted:
                                                      (String text) {
                                                    setState(() {});
                                                    renameSpace = text;
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 27),
                                                child: Divider(
                                                  color: Color.fromARGB(
                                                      255, 188, 188, 188),
                                                  thickness: 1,
                                                ),
                                              ),
                                              Column(children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 12),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Container(
                                                            width: 71,
                                                            height: 27,
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  "Cancel",
                                                                  style: TextStyle(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          131,
                                                                          131,
                                                                          131),
                                                                      fontSize:
                                                                          13),
                                                                ),
                                                              ],
                                                            ),
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                border: Border.all(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            143,
                                                                            143,
                                                                            143)),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8)),
                                                          ),
                                                        ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          spaceName ==
                                                              renameSpace;
                                                          setState(() {});
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Container(
                                                          width: 71,
                                                          height: 27,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Submit",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        13),
                                                              )
                                                            ],
                                                          ),
                                                          decoration: BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      177,
                                                                      17,
                                                                      255),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8)),
                                                        ),
                                                      ),
                                                    ]),
                                              ]),
                                            ]))));
                              }
                              if (value == MenuItem.item2) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext) {
                                      final Height =
                                          MediaQuery.of(context).size.height;
                                      final widht =
                                          MediaQuery.of(context).size.width;
                                      return Material(
                                        color: Color.fromARGB(0, 255, 255, 255),
                                        child: Column(
                                          children: [
                                            // jarak kotak nama file dan isinya dari atas / top
                                            SizedBox(
                                              height: Height * 0.35,
                                            ),
                                            Row(
                                              children: [
                                                // jarak ke samping
                                                SizedBox(
                                                  width: widht * 0.05,
                                                ),
                                                //kotak utama yang berisi name file dan isi
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    color: kWhite,
                                                  ),
                                                  child: Column(
                                                    children: <Widget>[
                                                      //kotak nama file dan silang (icon close)
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      148,
                                                                      148,
                                                                      148,
                                                                      1),
                                                              width: 2),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          color: kWhite,
                                                        ),
                                                        child: Column(
                                                            children: [
                                                              SizedBox(
                                                                height: Height *
                                                                    0.03,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width:
                                                                        widht *
                                                                            0.05,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .help_outline,
                                                                    size: 24,
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            255,
                                                                            165,
                                                                            2,
                                                                            1),
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        widht *
                                                                            0.05,
                                                                  ),
                                                                  Container(
                                                                    color:
                                                                        kWhite,
                                                                    width:
                                                                        widht *
                                                                            0.6,
                                                                    height:
                                                                        Height *
                                                                            0.07,
                                                                    child: Text(
                                                                        "Are you sure to delete this '$spaceName'"),
                                                                  )
                                                                  // Text(
                                                                  //   "Are you sure to delete this Space '$spaceName'",
                                                                  //   style: TextStryle(
                                                                  //       color:
                                                                  //           kblack,
                                                                  //       fontSize:
                                                                  //           16,
                                                                  //       fontWeight:
                                                                  //           FontWeight
                                                                  //               .w400,
                                                                  //       fontFamily:
                                                                  //           'Roboto'),
                                                                  // ),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width:
                                                                        widht *
                                                                            0.16,
                                                                  ),
                                                                  Text(
                                                                    "This action cannot be undo",
                                                                    style: TextStyle(
                                                                        color: Color.fromRGBO(
                                                                            174,
                                                                            174,
                                                                            174,
                                                                            1),
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        fontFamily:
                                                                            'Roboto'),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: Height *
                                                                    0.01,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  GestureDetector(
                                                                    onTap: () => Navigator.of(
                                                                            context,
                                                                            rootNavigator:
                                                                                true)
                                                                        .pop(
                                                                            context),
                                                                    child:
                                                                        Container(
                                                                      width: 71,
                                                                      height:
                                                                          28,
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            "Cancel",
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.w600,
                                                                                fontFamily: 'Roboto',
                                                                                color: Color.fromARGB(255, 131, 131, 131),
                                                                                fontSize: 13),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      decoration: BoxDecoration(
                                                                          color: Colors
                                                                              .white,
                                                                          border: Border.all(
                                                                              color: Color.fromARGB(255, 143, 143,
                                                                                  143)),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8)),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        widht *
                                                                            0.01,
                                                                  ),
                                                                  GestureDetector(
                                                                    onTap: () {
                                                                      Navigator.of(
                                                                              context,
                                                                              rootNavigator: true)
                                                                          .pop(context);
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width: 71,
                                                                      height:
                                                                          28,
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            "OK",
                                                                            style: TextStyle(
                                                                                fontFamily: 'Roboto',
                                                                                fontWeight: FontWeight.w600,
                                                                                color: Colors.white,
                                                                                fontSize: 13),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      decoration: BoxDecoration(
                                                                          color: Color.fromRGBO(
                                                                              253,
                                                                              64,
                                                                              64,
                                                                              1),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8)),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        widht *
                                                                            0.06,
                                                                  )
                                                                ],
                                                              )
                                                            ]),
                                                        // lebar dari container nama File
                                                        width: widht * 0.9,
                                                        //tinggi dari container Nama file
                                                        height: Height * 0.2,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                // jarak samping kanan
                                                SizedBox(
                                                  width: widht * 0.05,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: Height * 0.45,
                                            )
                                          ],
                                        ),
                                      );
                                    });
                              }
                            },
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 25,
                            ),
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                      value: MenuItem.item1,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.edit,
                                            color: Color.fromARGB(
                                                255, 0, 102, 255),
                                          ),
                                          Text(
                                            'Edit',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 102, 255)),
                                          )
                                        ],
                                      )),
                                  PopupMenuItem(
                                      value: MenuItem.item2,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.delete,
                                            color:
                                                Color.fromARGB(255, 246, 0, 0),
                                          ),
                                          Text('Delete',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 246, 0, 0)))
                                        ],
                                      ))
                                ])
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(
                      widget.text,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
>>>>>>> 2af5a4f7831fa15a950120ca5e610dd8c97eb2fb
  }
}
