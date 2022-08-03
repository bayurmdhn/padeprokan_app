import 'dart:js_util';
import 'dart:math';

import 'package:first_app_flutter/Components/appBar.dart';
import 'package:first_app_flutter/Components/appBarBack.dart';
import 'package:first_app_flutter/Screens/Register/Components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatefulWidget {
  static String routeName = "/profil";

  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Roboto'),
        home: Scaffold(
          //AppBar Padeprokan
          appBar: AppBar(
              title: appBarBack(
                judul: 'Profil',
              ),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              centerTitle: true),
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 25, 0, 248),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 25)),
                        Text(
                          "Detail Profil",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      width: 346,
                      height: 359,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 6,
                              offset: Offset(1, 1),
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 346,
                            height: 271,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) => Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 14),
                                                child: ListView(
                                                  children: [
                                                    AlertDialog(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      content: Container(
                                                          width: 486,
                                                          height: 880,
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    "Edit profil",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            20),
                                                                  )
                                                                ],
                                                              ),
                                                              Divider(
                                                                color: Colors
                                                                    .black,
                                                                thickness: 1,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            15),
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          bottom:
                                                                              12),
                                                                      child: RichText(
                                                                          text: TextSpan(
                                                                              text: "Full Name",
                                                                              style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
                                                                              children: [
                                                                            TextSpan(
                                                                                text: "*",
                                                                                style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                          ])),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 346,
                                                                  height: 29,
                                                                  child:
                                                                      TextFormField(
                                                                    decoration: InputDecoration(
                                                                        hintText:
                                                                            "My Account",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                11),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            11),
                                                                  )),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            15),
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          bottom:
                                                                              12),
                                                                      child: RichText(
                                                                          text: TextSpan(
                                                                              text: "Email",
                                                                              style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
                                                                              children: [
                                                                            TextSpan(
                                                                                text: "*",
                                                                                style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                          ])),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 346,
                                                                  height: 29,
                                                                  child:
                                                                      TextFormField(
                                                                    decoration: InputDecoration(
                                                                        hintText:
                                                                            "My Account@gmail.vom",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                11),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            11),
                                                                  )),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            15),
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          bottom:
                                                                              12),
                                                                      child: RichText(
                                                                          text: TextSpan(
                                                                              text: "Titel",
                                                                              style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
                                                                              children: [
                                                                            TextSpan(
                                                                                text: "*",
                                                                                style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                          ])),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 346,
                                                                  height: 29,
                                                                  child:
                                                                      TextFormField(
                                                                    decoration: InputDecoration(
                                                                        hintText:
                                                                            "Your study",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                11),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            11),
                                                                  )),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            15),
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          bottom:
                                                                              12),
                                                                      child: RichText(
                                                                          text: TextSpan(
                                                                              text: "Avatar",
                                                                              style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
                                                                              children: [
                                                                            TextSpan(
                                                                                text: "*",
                                                                                style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                          ])),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  GestureDetector(
                                                                    onTap:
                                                                        () {},
                                                                    child:
                                                                        Container(
                                                                      width: 74,
                                                                      height:
                                                                          67.32,
                                                                      decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(
                                                                              5),
                                                                          border: Border.all(
                                                                              color: Colors
                                                                                  .black),
                                                                          color: Color.fromARGB(
                                                                              1,
                                                                              239,
                                                                              239,
                                                                              239)),
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            "+",
                                                                            style:
                                                                                TextStyle(fontSize: 20),
                                                                          ),
                                                                          Text(
                                                                            "Upload",
                                                                            style:
                                                                                TextStyle(fontSize: 12),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            15),
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          bottom:
                                                                              12),
                                                                      child: RichText(
                                                                          text: TextSpan(
                                                                              text: "Phone Number",
                                                                              style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
                                                                              children: [
                                                                            TextSpan(
                                                                                text: "*",
                                                                                style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                          ])),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 346,
                                                                  height: 29,
                                                                  child:
                                                                      TextFormField(
                                                                    decoration: InputDecoration(
                                                                        hintText:
                                                                            "eg.083205***",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                11),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            11),
                                                                  )),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            15),
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          bottom:
                                                                              12),
                                                                      child: RichText(
                                                                          text: TextSpan(
                                                                              text: "Address",
                                                                              style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
                                                                              children: [
                                                                            TextSpan(
                                                                                text: "*",
                                                                                style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                          ])),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 346,
                                                                  height: 29,
                                                                  child:
                                                                      TextFormField(
                                                                    decoration: InputDecoration(
                                                                        hintText:
                                                                            "eg. Permata Bintaro Residance, A8, Kav.28. Elang empat street, Ciputat, Tangerang selatan",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                11),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            11),
                                                                  )),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            15),
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          bottom:
                                                                              12),
                                                                      child: RichText(
                                                                          text: TextSpan(
                                                                              text: "Facebook",
                                                                              style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
                                                                              children: [
                                                                            TextSpan(
                                                                                text: "*",
                                                                                style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                          ])),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 346,
                                                                  height: 29,
                                                                  child:
                                                                      TextFormField(
                                                                    decoration: InputDecoration(
                                                                        hintText:
                                                                            "Your Facebook Link",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                11),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            11),
                                                                  )),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            15),
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          bottom:
                                                                              12),
                                                                      child: RichText(
                                                                          text: TextSpan(
                                                                              text: "Twitter",
                                                                              style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
                                                                              children: [
                                                                            TextSpan(
                                                                                text: "*",
                                                                                style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                          ])),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 346,
                                                                  height: 29,
                                                                  child:
                                                                      TextFormField(
                                                                    decoration: InputDecoration(
                                                                        hintText:
                                                                            "Your Twitter Link",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                11),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            11),
                                                                  )),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            15),
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          bottom:
                                                                              12),
                                                                      child: RichText(
                                                                          text: TextSpan(
                                                                              text: "Linkedin",
                                                                              style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
                                                                              children: [
                                                                            TextSpan(
                                                                                text: "*",
                                                                                style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                          ])),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 346,
                                                                  height: 29,
                                                                  child:
                                                                      TextFormField(
                                                                    decoration: InputDecoration(
                                                                        hintText:
                                                                            "Your Linkedin Link",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                11),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            11),
                                                                  )),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            15),
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          bottom:
                                                                              12),
                                                                      child: RichText(
                                                                          text: TextSpan(
                                                                              text: "Github",
                                                                              style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
                                                                              children: [
                                                                            TextSpan(
                                                                                text: "*",
                                                                                style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                          ])),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 346,
                                                                  height: 29,
                                                                  child:
                                                                      TextFormField(
                                                                    decoration: InputDecoration(
                                                                        hintText:
                                                                            "Your Github Link",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                11),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            11),
                                                                  )),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            22),
                                                                child: Divider(
                                                                  color: Colors
                                                                      .black,
                                                                  thickness: 1,
                                                                ),
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(right: 12),
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {},
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                71,
                                                                            height:
                                                                                27,
                                                                            child:
                                                                                Column(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  "Cencel",
                                                                                  style: TextStyle(color: Color.fromARGB(255, 131, 131, 131), fontSize: 13),
                                                                                )
                                                                              ],
                                                                            ),
                                                                            decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                border: Border.all(
                                                                                  color: Color.fromARGB(255, 143, 143, 143),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      GestureDetector(
                                                                        onTap:
                                                                            () {},
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              71,
                                                                          height:
                                                                              27,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                "Submit",
                                                                                style: TextStyle(color: Colors.white, fontSize: 13),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          decoration: BoxDecoration(
                                                                              color: Color.fromARGB(255, 177, 17, 255),
                                                                              borderRadius: BorderRadius.circular(8)),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          )),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                          icon: Icon(
                                            Icons.edit,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            child: Icon(
                                              Icons.account_circle,
                                              size: 135,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: Text(
                                                "My Profile",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 12, left: 15),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.email_rounded,
                                                size: 35,
                                              ))),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 12, left: 15),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                "MyAccount@gmail.com",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Container(
                        width: 346,
                        height: 359,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 6,
                                offset: Offset(1, 1),
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 22),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Educational Background",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "This information can be edited from your profile",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 18, right: 25),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                  "assets/images/Not data.png"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 53.78),
                                      child: Divider(
                                        color: Colors.black,
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
                                                  right: 20),
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                  width: 122,
                                                  height: 36,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {
                                                            showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.only(bottom: 150),
                                                                          child:
                                                                              ListView(
                                                                            children: [
                                                                              AlertDialog(
                                                                                alignment: Alignment.topCenter,
                                                                                content: Container(
                                                                                  width: 386,
                                                                                  height: 580,
                                                                                  child: Column(
                                                                                    children: [
                                                                                      Row(
                                                                                        children: [
                                                                                          Text(
                                                                                            "Add Education",
                                                                                            style: TextStyle(fontSize: 16, fontFamily: "Roboto"),
                                                                                          )
                                                                                        ],
                                                                                      ),
                                                                                      Divider(
                                                                                        color: Colors.black,
                                                                                        thickness: 1,
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsets.only(top: 15),
                                                                                        child: Row(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.only(bottom: 12),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(text: "School", style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12), children: [
                                                                                                TextSpan(text: "*", style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                                              ])),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      SizedBox(
                                                                                          width: 346,
                                                                                          height: 29,
                                                                                          child: TextFormField(
                                                                                            decoration: InputDecoration(hintText: "Your School / University Name", hintStyle: TextStyle(fontSize: 11), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                                            style: TextStyle(fontSize: 11),
                                                                                          )),
                                                                                      Padding(
                                                                                        padding: const EdgeInsets.only(top: 15),
                                                                                        child: Row(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.only(bottom: 12),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(text: "Degre", style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12), children: [
                                                                                                TextSpan(text: "*", style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                                              ])),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      SizedBox(
                                                                                          width: 346,
                                                                                          height: 29,
                                                                                          child: TextFormField(
                                                                                            decoration: InputDecoration(hintText: "Your Degre", hintStyle: TextStyle(fontSize: 11), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                                            style: TextStyle(fontSize: 11),
                                                                                          )),
                                                                                      Padding(
                                                                                        padding: const EdgeInsets.only(top: 15),
                                                                                        child: Row(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.only(bottom: 12),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(text: "Field of Study", style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12), children: [
                                                                                                TextSpan(text: "*", style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                                              ])),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      SizedBox(
                                                                                          width: 346,
                                                                                          height: 29,
                                                                                          child: TextFormField(
                                                                                            decoration: InputDecoration(hintText: "Your Study", hintStyle: TextStyle(fontSize: 11), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                                            style: TextStyle(fontSize: 11),
                                                                                          )),
                                                                                      Padding(
                                                                                        padding: const EdgeInsets.only(top: 15),
                                                                                        child: Row(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.only(bottom: 12),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(text: "Year Star", style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12), children: [
                                                                                                TextSpan(text: "*", style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                                              ])),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      SizedBox(
                                                                                          width: 346,
                                                                                          height: 29,
                                                                                          child: TextFormField(
                                                                                            decoration: InputDecoration(hintText: "Year Star", hintStyle: TextStyle(fontSize: 11), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                                            style: TextStyle(fontSize: 11),
                                                                                          )),
                                                                                      Padding(
                                                                                        padding: const EdgeInsets.only(top: 15),
                                                                                        child: Row(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.only(bottom: 12),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(text: "Year End", style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12), children: [
                                                                                                TextSpan(text: "*", style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                                              ])),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      SizedBox(
                                                                                          width: 346,
                                                                                          height: 29,
                                                                                          child: TextFormField(
                                                                                            decoration: InputDecoration(hintText: "Year End", hintStyle: TextStyle(fontSize: 11), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                                            style: TextStyle(fontSize: 11),
                                                                                          )),
                                                                                      Padding(
                                                                                        padding: const EdgeInsets.only(top: 15),
                                                                                        child: Row(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.only(bottom: 12),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(text: "Thumbnail", style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12), children: [
                                                                                                TextSpan(text: "*", style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                                              ])),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        children: [
                                                                                          GestureDetector(
                                                                                            onTap: () {},
                                                                                            child: Container(
                                                                                              width: 74,
                                                                                              height: 67.32,
                                                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.black), color: Color.fromARGB(1, 239, 239, 239)),
                                                                                              child: Column(
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    "+",
                                                                                                    style: TextStyle(fontSize: 20),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    "Upload",
                                                                                                    style: TextStyle(fontSize: 12),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsets.only(top: 34),
                                                                                        child: Divider(
                                                                                          color: Colors.black,
                                                                                          thickness: 1,
                                                                                        ),
                                                                                      ),
                                                                                      Column(
                                                                                        children: [
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
                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          "Cancel",
                                                                                                          style: TextStyle(color: Color.fromARGB(255, 131, 131, 131), fontSize: 13),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Color.fromARGB(255, 143, 143, 143)), borderRadius: BorderRadius.circular(8)),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              GestureDetector(
                                                                                                onTap: () {},
                                                                                                child: Container(
                                                                                                  width: 71,
                                                                                                  height: 27,
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        "Submit",
                                                                                                        style: TextStyle(color: Colors.white, fontSize: 13),
                                                                                                      )
                                                                                                    ],
                                                                                                  ),
                                                                                                  decoration: BoxDecoration(color: Color.fromARGB(255, 177, 17, 255), borderRadius: BorderRadius.circular(8)),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          )
                                                                                        ],
                                                                                      )
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ));
                                                          },
                                                          icon: Icon(
                                                            Icons
                                                                .add_circle_rounded,
                                                            color: Colors.white,
                                                            size: 25,
                                                          )),
                                                      Text(
                                                        "Create New",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15),
                                                      )
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Container(
                        width: 346,
                        height: 359,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 6,
                                offset: Offset(1, 1),
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 35),
                                  child: Text(
                                    "Work Experience",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "This information can be edited from your profile",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 29, right: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                  "assets/images/Not data.png"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 80.78),
                                      child: Column(
                                        children: [
                                          Divider(
                                            color: Colors.black,
                                            thickness: 1,
                                          ),
                                        ],
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
                                                  right: 20),
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                  width: 122,
                                                  height: 36,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {
                                                            showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.only(),
                                                                          child:
                                                                              ListView(
                                                                            children: [
                                                                              AlertDialog(
                                                                                alignment: Alignment.topCenter,
                                                                                content: Container(
                                                                                  width: 386,
                                                                                  height: 800,
                                                                                  child: Column(
                                                                                    children: [
                                                                                      Row(
                                                                                        children: [
                                                                                          Text(
                                                                                            "Add work",
                                                                                            style: TextStyle(fontSize: 16, fontFamily: "Roboto"),
                                                                                          )
                                                                                        ],
                                                                                      ),
                                                                                      Divider(
                                                                                        color: Colors.black,
                                                                                        thickness: 1,
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsets.only(top: 15),
                                                                                        child: Row(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.only(bottom: 12),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(text: "Titel", style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12), children: [
                                                                                                TextSpan(text: "*", style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                                              ])),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      SizedBox(
                                                                                          width: 346,
                                                                                          height: 29,
                                                                                          child: TextFormField(
                                                                                            decoration: InputDecoration(hintText: "Enter Your Job Titel", hintStyle: TextStyle(fontSize: 11), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                                            style: TextStyle(fontSize: 11),
                                                                                          )),
                                                                                      Padding(
                                                                                        padding: const EdgeInsets.only(top: 15),
                                                                                        child: Row(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.only(bottom: 12),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(text: "Company name", style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12), children: [
                                                                                                TextSpan(text: "*", style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                                              ])),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      SizedBox(
                                                                                          width: 346,
                                                                                          height: 35,
                                                                                          child: TextFormField(
                                                                                            decoration: InputDecoration(hintText: "Enter Your company name", hintStyle: TextStyle(fontSize: 11), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                                            style: TextStyle(fontSize: 11),
                                                                                          )),
                                                                                      Padding(
                                                                                        padding: const EdgeInsets.only(top: 15),
                                                                                        child: Row(
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsets.only(bottom: 12),
                                                                                              child: RichText(
                                                                                                  text: TextSpan(text: "Location", style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12), children: [
                                                                                                TextSpan(text: "*", style: TextStyle(color: Color.fromARGB(255, 255, 19, 19)))
                                                                                              ])),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      SizedBox(
                                                                                          width: 346,
                                                                                          height: 29,
                                                                                          child: TextFormField(
                                                                                            decoration: InputDecoration(hintText: "Enter the company address", hintStyle: TextStyle(fontSize: 11), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                                            style: TextStyle(fontSize: 11),
                                                                                          )),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ));
                                                          },
                                                          icon: Icon(
                                                            Icons
                                                                .add_circle_rounded,
                                                            color: Colors.white,
                                                            size: 25,
                                                          )),
                                                      Text(
                                                        "Create New",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15),
                                                      )
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Container(
                        width: 346,
                        height: 359,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 6,
                                offset: Offset(1, 1),
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 160),
                                  child: Text(
                                    "Expertise",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "This information can be edited from your profile",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 29, right: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                  "assets/images/Not data.png"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 80.78),
                                      child: Column(
                                        children: [
                                          Divider(
                                            color: Colors.black,
                                            thickness: 1,
                                          ),
                                        ],
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
                                                  right: 20),
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                  width: 122,
                                                  height: 36,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons
                                                                .add_circle_rounded,
                                                            color: Colors.white,
                                                            size: 25,
                                                          )),
                                                      Text(
                                                        "Create New",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15),
                                                      )
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Container(
                        width: 346,
                        height: 359,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 6,
                                offset: Offset(1, 1),
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Text(
                                    "Presentation Slide",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "This information can be edited from your profile",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 29, right: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                  "assets/images/Not data.png"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 80.78),
                                      child: Column(
                                        children: [
                                          Divider(
                                            color: Colors.black,
                                            thickness: 1,
                                          ),
                                        ],
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
                                                  right: 20),
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                  width: 122,
                                                  height: 36,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons
                                                                .add_circle_rounded,
                                                            color: Colors.white,
                                                            size: 25,
                                                          )),
                                                      Text(
                                                        "Create New",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15),
                                                      )
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Container(
                        width: 346,
                        height: 359,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 6,
                                offset: Offset(1, 1),
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 165),
                                  child: Text(
                                    "Portfolio",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "This information can be edited from your profile",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 29, right: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                  "assets/images/Not data.png"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 80.78),
                                      child: Column(
                                        children: [
                                          Divider(
                                            color: Colors.black,
                                            thickness: 1,
                                          ),
                                        ],
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
                                                  right: 20),
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                  width: 122,
                                                  height: 36,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                            Icons
                                                                .add_circle_rounded,
                                                            color: Colors.white,
                                                            size: 25,
                                                          )),
                                                      Text(
                                                        "Create New",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15),
                                                      )
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
