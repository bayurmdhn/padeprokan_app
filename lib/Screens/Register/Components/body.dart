import 'dart:html';
import 'package:first_app_flutter/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/Screens/Register/Components/background.dart';
import 'package:flutter/widgets.dart';

import '../../Login/loginScreen.dart';

class Body extends StatelessWidget {
  late String _name, _email;
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 94,
            child: Image.asset(
              "assets/images/logo.png",
              height: 128.0,
              width: 124.0,
            ),
          ),
          Positioned(
            left: 34,
            top: 249,
            child: Text(
              "Register",
              style: new TextStyle(
                color: Colors.black,
                fontSize: 24.0,
              ),
            ),
          ),
          Positioned(
            left: 34,
            top: 285,
            child: Text(
              "Registration And Start Manage Your \nLearning Process!",
              style: new TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ),
          new Column(children: <Widget>[
            new Container(
                padding: EdgeInsets.only(left: 34, top: 360, right: 34),
                child: Form(
                    key: formKey,
                    child: Column(children: <Widget>[
                      new TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
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
                        onSaved: (var name) {
                          _name = name!;
                        },
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      new TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(140, 79, 225, 1))),
                          hintText: "Email",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(199, 196, 196, 1)),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        validator: (Value) {
                          if (Value!.isNotEmpty && Value.length > 3) {
                            return null;
                          } else if (Value.length < 4 && Value.isNotEmpty) {
                            return 'Please insert a valid email!';
                          } else {
                            return 'Your email is required';
                          }
                        },
                        onSaved: (var email) {
                          _email = email!;
                        },
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      new TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(140, 79, 225, 1))),
                          hintText: "Password",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(199, 196, 196, 1)),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        validator: (Value) {
                          if (Value!.isNotEmpty && Value.length > 3) {
                            return null;
                          } else if (Value.length < 4 && Value.isNotEmpty) {
                            return 'Please insert at least 6 characters !';
                          } else {
                            return 'Your password is required';
                          }
                        },
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      new TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(140, 79, 225, 1))),
                          hintText: "Confirm Your Password",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(199, 196, 196, 1)),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        validator: (Value) {
                          if (Value!.isNotEmpty && Value.length > 3) {
                            return null;
                          } else if (Value.length < 4 && Value.isNotEmpty) {
                            return 'Your Password is required';
                          } else {
                            return 'Your Password is required';
                          }
                        },
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Already have an account?",
                            style: new TextStyle(
                              color: Color.fromRGBO(141, 126, 224, 1),
                              fontSize: 14.0,
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            LoginScreen()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "Login here",
                                  style: new TextStyle(
                                    color: Color.fromRGBO(84, 66, 187, 1),
                                    fontSize: 14.0,
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ])))
          ]),
        ],
      ),
    ));
  }
}
