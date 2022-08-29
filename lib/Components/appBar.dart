import 'package:first_app_flutter/Components/Homepage/cardHome.dart';
import 'package:first_app_flutter/Screens/Profil/Profil.dart';
import 'package:flutter/material.dart';
import '../Screens/HomePage/homePage.dart';

enum MenuItem { item1, item2, item3, item4 }

int notification = 0;

class appBarClass extends StatelessWidget {
  final String judul;

  appBarClass({
    Key? key,
    required this.judul,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                Widget>[
      new Image.asset('assets/images/Logo padeprokan.png',
          width: 26, height: 26),
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
      Row(children: [
        Padding(
            padding: const EdgeInsets.only(right: 17),
            child: PopupMenuButton<MenuItem>(
                icon: Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 51, 51, 51),
                  size: 27,
                ),
                onSelected: (value) => {},
                itemBuilder: (context) => [
                      PopupMenuItem(
                          child: notification == 0
                              ? Container(
                                  width: 227,
                                  height: 210,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/images/Vector.png'),
                                        Text(
                                          "No Data",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Color.fromARGB(
                                                  255, 138, 138, 138)),
                                        )
                                      ]),
                                )
                              : Center()),
                      PopupMenuItem(
                          child: Text(
                        'Mark all as Read',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 137, 137, 137)),
                      ))
                    ])),

        //Account Button

        PopupMenuButton<MenuItem>(
            onSelected: (value) {
              if (value == MenuItem.item1) {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => ProfilePage()));
              }
              ;
              if (value == MenuItem.item2) {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: Container(
                            width: 386,
                            height: 380,
                            child: Column(
                              children: [
                                Row(children: [Text("Change Password")]),
                                Divider(
                                  color: Color.fromARGB(255, 188, 188, 188),
                                  thickness: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 28),
                                  child: Row(
                                    children: [
                                      RichText(
                                          text: TextSpan(
                                              text: "Old Password",
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: SizedBox(
                                      width: 346,
                                      height: 29,
                                      child: TextFormField(
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        decoration: InputDecoration(
                                            hintText: "Enter your old password",
                                            hintStyle: TextStyle(fontSize: 11),
                                            suffixIcon: Icon(
                                              Icons.visibility,
                                              color: Color.fromARGB(
                                                  255, 194, 194, 194),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 140, 79, 225)))),
                                        style: TextStyle(fontSize: 11),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 28),
                                  child: Row(
                                    children: [
                                      RichText(
                                          text: TextSpan(
                                              text: "New Password",
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: SizedBox(
                                      width: 346,
                                      height: 29,
                                      child: TextFormField(
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        decoration: InputDecoration(
                                            hintText: "Enter your new password",
                                            hintStyle: TextStyle(fontSize: 11),
                                            suffixIcon: Icon(
                                              Icons.visibility,
                                              color: Color.fromARGB(
                                                  255, 194, 194, 194),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 140, 79, 225)))),
                                        style: TextStyle(fontSize: 11),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 28),
                                  child: Row(
                                    children: [
                                      RichText(
                                          text: TextSpan(
                                              text: "Confirm new Password",
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: SizedBox(
                                      width: 346,
                                      height: 29,
                                      child: TextFormField(
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        decoration: InputDecoration(
                                            hintText:
                                                "Enter your confirmation password",
                                            hintStyle: TextStyle(fontSize: 11),
                                            suffixIcon: Icon(
                                              Icons.visibility,
                                              color: Color.fromARGB(
                                                  255, 194, 194, 194),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 140, 79, 225)))),
                                        style: TextStyle(fontSize: 11),
                                      )),
                                ),
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
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
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
                        ));
              }
            },
            icon: Icon(
              Icons.circle,
              color: Color.fromARGB(255, 51, 51, 51),
            ),
            iconSize: 27,
            itemBuilder: (context) => [
                  PopupMenuItem(
                      value: MenuItem.item1,
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 27,
                            color: Color.fromARGB(255, 51, 51, 51),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Text(
                              'My Account',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 51, 51, 51)),
                            ),
                          )
                        ],
                      )),
                  PopupMenuItem(
                      value: MenuItem.item2,
                      child: Text(
                        'Change Password',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 51, 51, 51)),
                      )),
                  PopupMenuItem(
                      value: MenuItem.item3,
                      child: Text('Logout',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 51, 51, 51))))
                ])
      ])
    ]));
  }
}
