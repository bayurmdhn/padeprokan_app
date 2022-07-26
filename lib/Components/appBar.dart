import 'package:first_app_flutter/Screens/Profil/Profil.dart';
import 'package:flutter/material.dart';

class appBarClass extends StatelessWidget {
  const appBarClass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Image.asset('assets/images/Logo padeprokan.png'),
        new Text(
          "Spacesttt",
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
                              padding:
                                  const EdgeInsets.only(right: 54, top: 30),
                              child: AlertDialog(
                                alignment: Alignment.topRight,
                                content: Container(
                                  width: 227,
                                  height: 256,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/Vector.png'),
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
                            padding: const EdgeInsets.fromLTRB(12, 23, 24, 34),
                            child: AlertDialog(
                              alignment: Alignment.topRight,
                              content: Container(
                                height: 100,
                                width: 200,
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ProfilePage()),
                                        );
                                      },
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.circle_rounded,
                                              color: Color.fromARGB(
                                                  255, 138, 138, 138),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13),
                                              child: Text(
                                                "My Account",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Color.fromARGB(255, 138, 138, 138),
                                      thickness: 1,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                                  content: Container(
                                                    width: 386,
                                                    height: 380,
                                                    child: Column(
                                                      children: [
                                                        Row(children: [
                                                          Text(
                                                              "Change Password")
                                                        ]),
                                                        Divider(
                                                          color: Color.fromARGB(
                                                              255,
                                                              188,
                                                              188,
                                                              188),
                                                          thickness: 1,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 28),
                                                          child: Row(
                                                            children: [
                                                              RichText(
                                                                  text: TextSpan(
                                                                      text:
                                                                          "Old Password",
                                                                      style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
                                                                      children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "*",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                255,
                                                                                19,
                                                                                19)))
                                                                  ])),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 12),
                                                          child: SizedBox(
                                                              width: 346,
                                                              height: 29,
                                                              child:
                                                                  TextFormField(
                                                                decoration:
                                                                    InputDecoration(
                                                                        hintText:
                                                                            "Enter your old password",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                11),
                                                                        suffixIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .visibility,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              194,
                                                                              194,
                                                                              194),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        11),
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 28),
                                                          child: Row(
                                                            children: [
                                                              RichText(
                                                                  text: TextSpan(
                                                                      text:
                                                                          "New Password",
                                                                      style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
                                                                      children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "*",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                255,
                                                                                19,
                                                                                19)))
                                                                  ])),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 12),
                                                          child: SizedBox(
                                                              width: 346,
                                                              height: 29,
                                                              child:
                                                                  TextFormField(
                                                                decoration:
                                                                    InputDecoration(
                                                                        hintText:
                                                                            "Enter your new password",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                11),
                                                                        suffixIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .visibility,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              194,
                                                                              194,
                                                                              194),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        11),
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 28),
                                                          child: Row(
                                                            children: [
                                                              RichText(
                                                                  text: TextSpan(
                                                                      text:
                                                                          "Confirm new Password",
                                                                      style: TextStyle(color: Color.fromARGB(255, 153, 153, 153), fontSize: 12),
                                                                      children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "*",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                255,
                                                                                19,
                                                                                19)))
                                                                  ])),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 12),
                                                          child: SizedBox(
                                                              width: 346,
                                                              height: 29,
                                                              child:
                                                                  TextFormField(
                                                                decoration:
                                                                    InputDecoration(
                                                                        hintText:
                                                                            "Enter your confirmation password",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                11),
                                                                        suffixIcon:
                                                                            Icon(
                                                                          Icons
                                                                              .visibility,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              194,
                                                                              194,
                                                                              194),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 140, 79, 225)))),
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        11),
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 27),
                                                          child: Divider(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    188,
                                                                    188,
                                                                    188),
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
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          12),
                                                                  child:
                                                                      GestureDetector(
                                                                    onTap:
                                                                        () {},
                                                                    child:
                                                                        Container(
                                                                      width: 71,
                                                                      height:
                                                                          27,
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            "Cancel",
                                                                            style:
                                                                                TextStyle(color: Color.fromARGB(255, 131, 131, 131), fontSize: 13),
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
                                                                ),
                                                                GestureDetector(
                                                                  onTap: () {},
                                                                  child:
                                                                      Container(
                                                                    width: 71,
                                                                    height: 27,
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
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
                                                                            255,
                                                                            177,
                                                                            17,
                                                                            255),
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
                                                ));
                                      },
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Text("Change Password",
                                                style: TextStyle(fontSize: 14)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Color.fromARGB(255, 138, 138, 138),
                                      thickness: 1,
                                    ),
                                    Row(
                                      children: [
                                        Text("Logout",
                                            style: TextStyle(fontSize: 14))
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
    );
  }
}
