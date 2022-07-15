import 'dart:html';

import 'package:first_app_flutter/Components/Login/loginForm.dart';
import 'package:first_app_flutter/Reverensi/login.dart';
import 'package:first_app_flutter/Screens/Login/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _secureText = true;
  bool _securepass = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(219, 223, 247, 1),
        padding: EdgeInsets.only(top: 94),
        child: Column(children: <Widget>[
          new Image.asset(
            "assets/images/logo.png",
            height: 128.0,
            width: 124.0,
          ),
          new Row(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 34, top: 31),
                child: Text(
                  "Registrasi",
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 34, top: 14),
                child: Text(
                  "Registration And Start Manage Your \nLearning Process!",
                  style: new TextStyle(
                    color: Color.fromRGBO(137, 137, 137, 1),
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
          // new Column(
          //   children: <Widget>[
          //     new Container(
          //       padding: EdgeInsets.only(left: 34, top: 46, right: 34),
          //       child: new Form(
          //         key: _formKey,
          //         child: new TextFormField(
          //           decoration: InputDecoration(
          //             enabledBorder: OutlineInputBorder(
          //                 borderRadius: BorderRadius.all(Radius.circular(6)),
          //                 borderSide: BorderSide(
          //                     color: Color.fromARGB(255, 255, 255, 255))),
          //             focusedBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(
          //                     width: 3,
          //                     color: Color.fromRGBO(140, 79, 225, 1))),
          //             hintText: "Name",
          //             hintStyle:
          //                 TextStyle(color: Color.fromRGBO(199, 196, 196, 1)),
          //             filled: true,
          //             fillColor: Colors.white,
          //           ),
          //           validator: (Value) {
          //             if (Value!.isNotEmpty && Value.length > 3) {
          //               return null;
          //             } else if (Value.length < 4 && Value.isNotEmpty) {
          //               return 'Your name is too short';
          //             } else {
          //               return 'Your full name is required';
          //             }
          //           },
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          new Column(
            children: <Widget>[
              new Container(
                  padding: EdgeInsets.only(left: 34, top: 14, right: 34),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: <Widget>[
                        new TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3,
                                    color: Color.fromRGBO(140, 79, 225, 1))),
                            hintText: "Name",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(199, 196, 196, 1)),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          validator: (Value) {
                            if (Value!.isNotEmpty && Value.length > 3) {
                              return null;
                            } else if (Value.length < 4 && Value.isNotEmpty) {
                              return 'Your name is too short';
                            } else {
                              return 'Your full name is required';
                            }
                          },
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3,
                                    color: Color.fromRGBO(140, 79, 225, 1))),
                            hintText: "Email",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(199, 196, 196, 1)),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "required";
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3,
                                    color: Color.fromRGBO(140, 79, 225, 1))),
                            hintText: "Passwowrd",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(199, 196, 196, 1)),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "required";
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3,
                                    color: Color.fromRGBO(140, 79, 225, 1))),
                            hintText: "Confirm Your Password",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(199, 196, 196, 1)),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "required";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ],
                    ),
                  ))
            ],
          ),
          // new Column(
          //   children: <Widget>[
          //     new Container(
          //       padding: EdgeInsets.only(left: 34, top: 14, right: 34),
          //       child: new Column(
          //         children: <Widget>[
          //           new TextFormField(
          //             decoration: InputDecoration(
          //                 enabledBorder: OutlineInputBorder(
          //                     borderRadius:
          //                         BorderRadius.all(Radius.circular(6)),
          //                     borderSide: BorderSide(
          //                         color: Color.fromARGB(255, 255, 255, 255))),
          //                 focusedBorder: OutlineInputBorder(
          //                     borderSide: BorderSide(
          //                         width: 3,
          //                         color: Color.fromRGBO(140, 79, 225, 1))),
          //                 hintText: "Password",
          //                 hintStyle: TextStyle(
          //                     color: Color.fromRGBO(199, 196, 196, 1)),
          //                 filled: true,
          //                 fillColor: Colors.white,
          //                 suffixIcon: IconButton(
          //                   icon: Icon(
          //                     _secureText
          //                         ? Icons.visibility_off
          //                         : Icons.visibility,
          //                     color: Color.fromRGBO(219, 223, 247, 1),
          //                   ),
          //                   onPressed: () {
          //                     setState(() {
          //                       _secureText = !_secureText;
          //                     });
          //                   },
          //                 )),
          //             obscureText: _secureText,
          //           )
          //         ],
          //       ),
          //     )
          //   ],
          // ),
          // new Column(
          //   children: <Widget>[
          //     new Container(
          //       padding: EdgeInsets.only(left: 34, top: 14, right: 34),
          //       child: new Column(
          //         children: <Widget>[
          //           new TextFormField(
          //             decoration: InputDecoration(
          //                 enabledBorder: OutlineInputBorder(
          //                     borderRadius:
          //                         BorderRadius.all(Radius.circular(6)),
          //                     borderSide: BorderSide(
          //                         color: Color.fromARGB(255, 255, 255, 255))),
          //                 focusedBorder: OutlineInputBorder(
          //                     borderSide: BorderSide(
          //                         width: 3,
          //                         color: Color.fromRGBO(140, 79, 225, 1))),
          //                 hintText: "Confirm Your Password",
          //                 hintStyle: TextStyle(
          //                     color: Color.fromRGBO(199, 196, 196, 1)),
          //                 filled: true,
          //                 fillColor: Colors.white,
          //                 suffixIcon: IconButton(
          //                   icon: Icon(
          //                     _securepass
          //                         ? Icons.visibility_off
          //                         : Icons.visibility,
          //                     color: Color.fromRGBO(219, 223, 247, 1),
          //                   ),
          //                   onPressed: () {
          //                     setState(() {
          //                       _securepass = !_securepass;
          //                     });
          //                   },
          //                 )),
          //             obscureText: _securepass,
          //           )
          //         ],
          //       ),
          //     )
          //   ],
          // ),
          new Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 34, top: 34, right: 34),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (!formkey.currentState!.validate()) {
                          return;
                        }
                      },
                      child: Text(
                        "Registrasi",
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(247, 183, 49, 1),
                          onPrimary: Colors.white,
                          minimumSize: Size(346, 40),
                          padding: EdgeInsets.only(top: 20, bottom: 20)),
                    ),
                    SizedBox(height: 34),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          child: Row(children: <Widget>[
                        Text(
                          "Already have an account?",
                          style: new TextStyle(
                            color: Color.fromRGBO(141, 126, 224, 1),
                            fontSize: 14.0,
                          ),
                          // style: TextStyle(decoration: TextDecoration.underline),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginScreen()));
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Row(children: <Widget>[
                              Text(
                                "Login here!",
                                style: new TextStyle(
                                  color: Color.fromRGBO(84, 66, 187, 1),
                                  fontSize: 14.0,
                                ),
                              )
                            ]),
                          ),
                        )
                      ])),
                      // child: Text(
                      //   "Don't have account?",
                      //   style: TextStyle(decoration: TextDecoration.underline),
                      // ),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //         builder: (BuildContext context) => LoginScreen()));
                    //   },
                    //   child: Container(
                    //     child: Column(children: <Widget>[
                    //       Text(
                    //         "Already have an account? Login here",
                    //         style: new TextStyle(
                    //           color: Color.fromRGBO(84, 66, 187, 1),
                    //           fontSize: 14.0,
                    //         ),
                    //       ),
                    //     ]),
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}